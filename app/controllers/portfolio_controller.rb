class PortfolioController < ApplicationController
  
  def index
  @works = Work.where('created_at >= ?', Time.current - 3.year).order("created_at ASC")
  @ops = Work.where(genre: "op").order("created_at ASC")
  @kumas = Work.where(genre: "kuma").order("created_at ASC")
  @nobodies = Work.where(genre: "nobody").order("created_at ASC")
  @others = Work.where(genre: "other").order("created_at ASC")
  end
  
  def new
  @works = Work.new
  end
  
  def create
  @works = Work.create(create_params)
  end
    
  def show
    @works = Work.find(params[:id])
  end
  
  def update
  end
  
  def edit
  end
  
private
  def create_params
      params.require(:work).permit(:title, :detail, :genre, :avater, images: []) 
  end

  
end

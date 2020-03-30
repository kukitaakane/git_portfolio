Rails.application.routes.draw do
   root to: 'portfolio#index'
  resources :portfolio
  
  get 'portfolio' => 'portfolio#index'
  get 'portfolio/new' => 'portfolio#new'
  get 'portfolio/:id' => 'portfolio#show'

  post 'portfolio'  =>  'portfolio#create' 
  post 'works' => 'portfolio#create'
end

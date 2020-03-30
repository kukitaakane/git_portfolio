class CreateAnothers < ActiveRecord::Migration[5.2]
  def change
    create_table :anothers do |t|
      t.string      :title
      t.text        :detail
      t.text        :images
      t.timestamps
    end
  end
end

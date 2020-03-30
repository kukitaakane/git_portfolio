class CreateOps < ActiveRecord::Migration[5.2]
  def change
    create_table :ops do |t|
      t.string      :title
      t.text        :detail
      t.text        :images
      t.timestamps
    end
  end
end

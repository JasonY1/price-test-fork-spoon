class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :link
      t.integer :inventory
      t.boolean :show, default: true

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :price
      t.string :link
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end

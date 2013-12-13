class CreateTombleitems < ActiveRecord::Migration
  def change
    create_table :tombleitems do |t|
      t.string :name
      t.integer :price
      t.boolean :is_animated

      t.timestamps
    end
  end
end

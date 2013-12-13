class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end

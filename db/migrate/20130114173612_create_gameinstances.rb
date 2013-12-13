class CreateGameinstances < ActiveRecord::Migration
  def change
    create_table :gameinstances do |t|
      t.text :description
      t.string :type
      t.integer :game_id
      t.text :environment
      t.integer :module_id

      t.timestamps
    end
  end
end

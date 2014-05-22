class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :gametype
      t.text :description
      t.string :skill
      t.text :overview
      t.boolean :multiplayer
      t.string :labeltext
      t.boolean :picture_game
      t.boolean :label_game
      t.integer :cms_id

      t.timestamps
    end
  end
end

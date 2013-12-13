class CreateGamesSoundsTable < ActiveRecord::Migration
  def up
  create_table :games_sounds, :id => false do |t|
  		t.integer :game_id
  		t.integer :sound_id
  	end

  	add_index :games_sounds, :game_id
  	add_index :games_sounds, :sound_id
 
	end
end

class CreateCharactersGamesTable < ActiveRecord::Migration
  def up
  	create_table :characters_games, :id => false do |t|
  		t.integer :character_id
  		t.integer :game_id
  	end

  	add_index :characters_games, :character_id
  	add_index :characters_games, :game_id
 
	end
end

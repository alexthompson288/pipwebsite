class CreateCharactersGamesinstancesTable < ActiveRecord::Migration
  def up
  create_table :characters_gameinstances, :id => false do |t|
  		t.integer :character_id
  		t.integer :gameinstance_id
  	end

  	add_index :characters_gameinstances, :character_id
  	add_index :characters_gameinstances, :gameinstance_id
 
	end
end

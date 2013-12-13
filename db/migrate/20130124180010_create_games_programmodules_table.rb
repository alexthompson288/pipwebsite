class CreateGamesProgrammodulesTable < ActiveRecord::Migration
 def up
  create_table :games_programmodules, :id => false do |t|
  		t.integer :game_id
  		t.integer :programmodule_id
  	end

  	add_index :games_programmodules, :game_id
  	add_index :games_programmodules, :programmodule_id
 
	end
end

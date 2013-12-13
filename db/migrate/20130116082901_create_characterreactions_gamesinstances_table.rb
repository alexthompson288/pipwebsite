class CreateCharacterreactionsGamesinstancesTable < ActiveRecord::Migration
  def up
  create_table :characterreactions_gameinstances, :id => false do |t|
  		t.integer :characterreaction_id
  		t.integer :gameinstance_id
  	end

  	add_index :characterreactions_gameinstances, :characterreaction_id
  	add_index :characterreactions_gameinstances, :gameinstance_id
 
	end
end

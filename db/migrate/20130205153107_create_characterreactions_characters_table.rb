class CreateCharacterreactionsCharactersTable < ActiveRecord::Migration
	def up
  create_table :characterreactions_characters, :id => false do |t|
  		t.integer :characterreaction_id
  		t.integer :character_id
  	end

  	add_index :characterreactions_characters, :characterreaction_id
  	add_index :characterreactions_characters, :character_id
 
	end
end

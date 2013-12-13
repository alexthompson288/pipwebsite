class DropCharacterreactionsCharacters < ActiveRecord::Migration
  def up
  	drop_table :characterreactions_characters
  end

  def down
  	create_table :characterreactions_characters, :id => false do |t|
  		t.integer :characterreaction_id
  		t.integer :character_id
  	end
  end
end

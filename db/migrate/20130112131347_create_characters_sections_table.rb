class CreateCharactersSectionsTable < ActiveRecord::Migration
  def up
  	create_table :characters_sections, :id => false do |t|
  		t.integer :character_id
  		t.integer :section_id
  	end

  	add_index :characters_sections, :character_id
  	add_index :characters_sections, :section_id
 
	end
end

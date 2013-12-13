class CreateCharacterreactionsSectionsTable < ActiveRecord::Migration
  
  def up
  	create_table :characterreactions_sections, :id => false do |t|
  		t.integer :characterreaction_id
  		t.integer :section_id
  	end

  	add_index :characterreactions_sections, :characterreaction_id
  	add_index :characterreactions_sections, :section_id
 
	end
end

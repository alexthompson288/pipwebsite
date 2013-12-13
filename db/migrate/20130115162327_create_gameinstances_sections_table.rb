class CreateGameinstancesSectionsTable < ActiveRecord::Migration
	def up
  create_table :gameinstances_sections, :id => false do |t|
  		t.integer :gameinstance_id
  		t.integer :section_id
  	end

  	add_index :gameinstances_sections, :gameinstance_id
  	add_index :gameinstances_sections, :section_id
 
	end
end

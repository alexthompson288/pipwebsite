class CreatePhonemesSectionsTable < ActiveRecord::Migration
  def up
  	create_table :phonemes_sections, :id => false do |t|
  		t.integer :phoneme_id
  		t.integer :section_id
  	end

  	add_index :phonemes_sections, :phoneme_id
  	add_index :phonemes_sections, :section_id
 
	end
end

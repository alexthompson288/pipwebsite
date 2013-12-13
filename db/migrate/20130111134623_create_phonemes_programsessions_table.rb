class CreatePhonemesProgramsessionsTable < ActiveRecord::Migration
def up
  	create_table :phonemes_programsessions, :id => false do |t|
  		t.integer :phoneme_id
  		t.integer :programsession_id
  	end

  	add_index :phonemes_programsessions, :phoneme_id
  	add_index :phonemes_programsessions, :programsession_id
 
	end
end

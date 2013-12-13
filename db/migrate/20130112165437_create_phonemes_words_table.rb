class CreatePhonemesWordsTable < ActiveRecord::Migration
   def up
  	create_table :phonemes_words, :id => false do |t|
  		t.integer :phoneme_id
  		t.integer :word_id
  	end

  	add_index :phonemes_words, :phoneme_id
  	add_index :phonemes_words, :word_id
 
	end
end

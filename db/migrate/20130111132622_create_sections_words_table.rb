class CreateSectionsWordsTable < ActiveRecord::Migration
 def up
  	create_table :sections_words, :id => false do |t|
  		t.integer :section_id
  		t.integer :word_id
  	end

  	add_index :sections_words, :section_id
  	add_index :sections_words, :word_id
 
	end
end

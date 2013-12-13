class CreateThemesWordsTable < ActiveRecord::Migration
  def up
  	create_table :themes_words, :id => false do |t|
  		t.integer :theme_id
  		t.integer :word_id
  	end

  	add_index :themes_words, :theme_id
  	add_index :themes_words, :word_id
 
	end
end

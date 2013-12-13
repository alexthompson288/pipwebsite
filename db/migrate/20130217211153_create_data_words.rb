class CreateDataWords < ActiveRecord::Migration
  def change
    create_table :data_words do |t|
      t.references :section
      t.references :word
      t.boolean :is_target_word
      t.boolean :is_dummy_word
      t.integer :linking_index

      t.timestamps
    end
    add_index :data_words, :section_id
    add_index :data_words, :word_id
  end
end

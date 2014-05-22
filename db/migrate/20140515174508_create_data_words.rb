class CreateDataWords < ActiveRecord::Migration
  def change
    create_table :data_words do |t|
      t.integer :section_id
      t.integer :word_id
      t.boolean :is_target_word
      t.boolean :is_dummy_word
      t.integer :programsession_id

      t.timestamps
    end
  end
end

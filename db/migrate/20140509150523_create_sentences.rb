class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :text
      t.string :linking_index
      t.integer :section_id
      t.datetime :created_at
      t.datetime :updated_at
      t.boolean :is_target_sentence
      t.boolean :is_dummy_sentence
      t.string :gametype
      t.integer :programsession_id
      t.string :text_french
      t.string :text_spanish
      t.string :text_mandarin

   
    end
  end
end

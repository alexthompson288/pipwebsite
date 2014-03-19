class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :account_username
      t.string :child_name
      t.integer :has_completed
      t.datetime :start
      t.datetime :end
      t.string :session_identifier
      t.string :session_name
      t.integer :session_id
      t.integer :session_number
      t.string :session_type
      t.string :scenes
      t.string :phoneme_ids
      t.integer :target_phoneme_id
      t.string :word_ids
      t.integer :target_word_id
      t.string :keyword_ids
      t.integer :target_keyword_id

      t.timestamps
    end
  end
end

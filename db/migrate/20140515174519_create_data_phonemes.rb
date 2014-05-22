class CreateDataPhonemes < ActiveRecord::Migration
  def change
    create_table :data_phonemes do |t|
      t.integer :section_id
      t.integer :phoneme_id
      t.boolean :is_target_phoneme
      t.boolean :is_dummy_phoneme
      t.integer :programsession_id

      t.timestamps
    end
  end
end

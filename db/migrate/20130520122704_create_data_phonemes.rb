class CreateDataPhonemes < ActiveRecord::Migration
  def change
    create_table :data_phonemes do |t|
      t.references :section
      t.references :phoneme
      t.boolean :is_target_phoneme
      t.boolean :is_dummy_phoneme
      t.integer :linking_index

      t.timestamps
    end
    add_index :data_phonemes, :section_id
    add_index :data_phonemes, :phoneme_id
  end
end

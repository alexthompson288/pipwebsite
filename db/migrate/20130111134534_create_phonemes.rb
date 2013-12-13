class CreatePhonemes < ActiveRecord::Migration
  def change
    create_table :phonemes do |t|
      t.string :phoneme

      t.timestamps
    end
  end
end

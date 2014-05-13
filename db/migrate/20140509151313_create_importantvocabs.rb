class CreateImportantvocabs < ActiveRecord::Migration
  def change
    create_table :importantvocabs do |t|
      t.integer :pipisode_id
      t.integer :story_id
      t.integer :word_id
      t.integer :sentence_id

      t.timestamps
    end
  end
end

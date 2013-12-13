class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :text
      t.string :linking_index
      t.references :section

      t.timestamps
    end
    add_index :sentences, :section_id
  end
end

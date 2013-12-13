class CreateStorypages < ActiveRecord::Migration
  def change
    create_table :storypages do |t|
      t.integer :story_id
      t.text :text
      t.string :image
      t.string :audio
      t.integer :pageorder

      t.timestamps
    end
  end
end

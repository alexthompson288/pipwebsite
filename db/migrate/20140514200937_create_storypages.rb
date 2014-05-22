class CreateStorypages < ActiveRecord::Migration
  def change
    create_table :storypages do |t|
      t.integer :story_id
      t.text :text
      t.string :image
      t.string :audio
      t.integer :pageorder
      t.text :frenchtext
      t.text :spanishtext
      t.text :mandarintext
      t.text :germantext

      t.timestamps
    end
  end
end

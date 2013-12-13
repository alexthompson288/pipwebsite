class CreateStorysets < ActiveRecord::Migration
  def change
    create_table :storysets do |t|
      t.string :title
      t.string :bgimage
      t.string :font

      t.timestamps
    end
  end
end

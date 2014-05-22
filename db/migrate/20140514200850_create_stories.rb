class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :storycoverartwork
      t.integer :storyset_id
      t.integer :programmodule_id
      t.string :author
      t.text :description
      t.string :storytype
      t.boolean :publishable
      t.string :title_french
      t.string :title_spanish
      t.string :title_mandarin
      t.text :description_french
      t.text :description_spanish
      t.text :description_mandarin
      t.text :extra_activities
      t.text :extra_activities_french
      t.text :extra_activities_spanish
      t.text :extra_activities_mandarin
      t.integer :cms_id

      t.timestamps
    end
  end
end

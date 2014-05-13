class CreatePipisodes < ActiveRecord::Migration
  def change
    create_table :pipisodes do |t|
      t.string :video_filename
      t.string :image_filename
      t.integer :order_number
      t.boolean :interactive_video
      t.text :pipisode_overview
      t.integer :programmodule_id
      t.integer :phonicsset_id
      t.datetime :created_at
      t.datetime :updated_at
      t.string :pipisode_title
      t.string :label_text
      t.boolean :publishable
      t.text :transcript_english
      t.text :transcript_french
      t.text :transcript_spanish
      t.text :transcript_mandarin
      t.text :pipisode_overview_french
      t.text :pipisode_overview_spanish
      t.text :pipisode_overview_mandarin
      t.string :pipisode_title_french
      t.string :pipisode_title_spanish
      t.string :pipisode_title_mandarin
      t.string :video_filename_french
      t.string :video_filename_spanish
      t.string :video_filename_mandarin
      t.text :extra_activities
      t.text :extra_activities_french
      t.text :extra_activities_spanish
      t.text :extra_activities_mandarin

      
    end
  end
end

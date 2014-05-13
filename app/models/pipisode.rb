class Pipisode < ActiveRecord::Base
	attr_accessible :video_filename, :image_filename, :order_number, 
        :interactive_video, :pipisode_overview, :programmodule_id, :phonicsset_id, :pipisode_title,
         :label_text, :publishable, :transcript_english, :transcript_french, :transcript_spanish, 
         :transcript_mandarin, :pipisode_overview_french, :pipisode_overview_spanish, :pipisode_overview_mandarin,
         :pipisode_title_french, :pipisode_title_spanish, :pipisode_title_mandarin, :video_filename_french,
         :video_filename_spanish, :video_filename_mandarin, :extra_activities, :extra_activities_french, :extra_activities_french,
         :extra_activities_spanish, :extra_activities_mandarin, :cms_id
end

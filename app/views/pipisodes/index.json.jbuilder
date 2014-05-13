json.array!(@pipisodes) do |pipisode|
  json.extract! pipisode, :id, :video_filename, :image_filename, :order_number, :interactive_video, :pipisode_overview, :programmodule_id, :phonicsset_id, :pipisode_title, :label_text, :publishable, :transcript_english, :transcript_french, :transcript_spanish, :transcript_mandarin, :pipisode_overview_french
  json.url pipisode_url(pipisode, format: :json)
end

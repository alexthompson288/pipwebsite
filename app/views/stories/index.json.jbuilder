json.array!(@stories) do |story|
  json.extract! story, :id, :title, :storycoverartwork, :storyset_id, :programmodule_id, :author, :description, :storytype, :publishable, :title_french, :title_spanish, :title_mandarin, :description_french, :description_spanish, :description_mandarin, :extra_activities, :extra_activities_french, :extra_activities_spanish, :extra_activities_mandarin, :cms_id
  json.url story_url(story, format: :json)
end

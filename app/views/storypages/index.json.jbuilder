json.array!(@storypages) do |storypage|
  json.extract! storypage, :id, :story_id, :text, :image, :audio, :pageorder, :frenchtext, :spanishtext, :mandarintext, :germantext
  json.url storypage_url(storypage, format: :json)
end

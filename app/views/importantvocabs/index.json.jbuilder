json.array!(@importantvocabs) do |importantvocab|
  json.extract! importantvocab, :id, :pipisode_id, :story_id, :word_id, :sentence_id
  json.url importantvocab_url(importantvocab, format: :json)
end

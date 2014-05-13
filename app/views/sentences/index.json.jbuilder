json.array!(@sentences) do |sentence|
  json.extract! sentence, :id, :text, :linking_index, :section_id, :is_target_sentence, :is_dummy_sentence, :gametype, :programsession_id, :text_french, :text_spanish, :text_mandarin
  json.url sentence_url(sentence, format: :json)
end

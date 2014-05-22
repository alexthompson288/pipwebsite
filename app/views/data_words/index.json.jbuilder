json.array!(@data_words) do |data_word|
  json.extract! data_word, :id, :section_id, :word_id, :is_target_word, :is_dummy_word, :programsession_id
  json.url data_word_url(data_word, format: :json)
end

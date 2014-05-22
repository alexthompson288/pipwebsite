json.array!(@data_phonemes) do |data_phoneme|
  json.extract! data_phoneme, :id, :section_id, :phoneme_id, :is_target_phoneme, :is_dummy_phoneme, :programsession_id
  json.url data_phoneme_url(data_phoneme, format: :json)
end

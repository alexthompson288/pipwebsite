json.array!(@phonemes) do |phoneme|
  json.extract! phoneme, 
  json.url phoneme_url(phoneme, format: :json)
end

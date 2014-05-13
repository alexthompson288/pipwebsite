json.array!(@words) do |word|
  json.extract! word, :id, :word, :startingletter, :cvc, :ccvc, :diagraph, :splitdiagraph, :numsyllables, :numletters, :numphonemes, :image, :nonsense, :entrypointmodule, :entrypointunit, :entrypoint_session, :highfrequencyword, :cvcc, :imagepossible, :imagerequired, :completed, :tricky, :ordered_phonemes, :dummyorderedphonemes, :frenchword, :spanishword, :mandarinword, :germanword
  json.url word_url(word, format: :json)
end

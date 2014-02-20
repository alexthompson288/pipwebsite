json.array!(@glossaryterms) do |glossaryterm|
  json.extract! glossaryterm, :term, :description
  json.url glossaryterm_url(glossaryterm, format: :json)
end

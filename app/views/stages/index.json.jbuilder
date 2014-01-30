json.array!(@stages) do |stage|
  json.extract! stage, :number, :age, :description
  json.url stage_url(stage, format: :json)
end

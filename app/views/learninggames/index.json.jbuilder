json.array!(@learninggames) do |learninggame|
  json.extract! learninggame, :name, :skill, :learningobjective, :instructions, :resources, :extension, :video
  json.url learninggame_url(learninggame, format: :json)
end

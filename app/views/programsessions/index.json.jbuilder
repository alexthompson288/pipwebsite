json.array!(@programsessions) do |programsession|
  json.extract! programsession, :id, :number, :learningobjective, :programmodule_id, :story_id, :pipisode_id, :learningvoyagebool, :target_number, :highest_number, :cms_id
  json.url programsession_url(programsession, format: :json)
end

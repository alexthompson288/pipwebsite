json.array!(@sections) do |section|
  json.extract! section, :id, :sectiontype, :programsession_id, :game_id, :number, :programmodule_id, :cms_id
  json.url section_url(section, format: :json)
end

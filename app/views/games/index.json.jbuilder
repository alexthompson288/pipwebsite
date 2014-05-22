json.array!(@games) do |game|
  json.extract! game, :id, :name, :gametype, :description, :skill, :overview, :multiplayer, :labeltext, :picture_game, :label_game, :cms_id
  json.url game_url(game, format: :json)
end

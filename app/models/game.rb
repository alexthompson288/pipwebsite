class Game < ActiveRecord::Base
	attr_accessible :name, :gametype, :description, :skill, :overview, :multiplayer, :labeltext, :picture_game, :label_game, :cms_id
end

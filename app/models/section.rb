class Section < ActiveRecord::Base
	attr_accessible :sectiontype, :programsession_id, :game_id, :number, :programmodule_id, :cms_id
end

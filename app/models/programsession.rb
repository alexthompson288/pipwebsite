class Programsession < ActiveRecord::Base

	attr_accessible :number, :learningobjective, :programmodule_id, 
	:story_id, :pipisode_id, :learningvoyagebool, :target_number, :highest_number, :cms_id

	belongs_to :programmodule

end

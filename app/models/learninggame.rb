class Learninggame < ActiveRecord::Base

	attr_accessible :name, :learningobjective, :instructions, :skillstring, :resources, :extension, :video, :stage_id, :skill_id

	belongs_to :stage
	belongs_to :skill

end

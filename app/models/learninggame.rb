class Learninggame < ActiveRecord::Base

	attr_accessible :name, :learningobjective, :instructions, :skill, :resources, :extension, :video, :stage_id

	belongs_to :stage

end

class Skill < ActiveRecord::Base
	attr_accessible :name, :description, :video, :stage_id

	belongs_to :stage
	has_many :learninggames
end

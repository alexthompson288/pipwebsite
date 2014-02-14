class Product < ActiveRecord::Base
	attr_accessible :description, :image, :link, :price, :name, :stage_ids, :video, :comingsoon

	has_and_belongs_to_many :stages


end

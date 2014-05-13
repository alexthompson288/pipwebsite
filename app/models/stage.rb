class Stage < ActiveRecord::Base

	attr_accessible :number, :age, :description, :learninggame_ids, 
	:product_ids, :video, :colour, :test_url

	has_and_belongs_to_many :products

	has_many :learninggames

	has_many :skills

end

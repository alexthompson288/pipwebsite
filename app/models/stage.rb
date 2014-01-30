class Stage < ActiveRecord::Base

	attr_accessible :number, :age, :description, :learninggame_ids

	has_many :learninggames

end

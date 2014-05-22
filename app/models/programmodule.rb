class Programmodule < ActiveRecord::Base
	attr_accessible :number, :colour, :phaselevel, :programmename, :cms_id

	has_many :programsessions
end

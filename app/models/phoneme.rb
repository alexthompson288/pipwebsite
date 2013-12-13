class Phoneme < ActiveRecord::Base
  attr_accessible :phoneme, :programsession_ids, :section_ids, :word_ids, 
  :imagepossible, :mneumonic, :mneumonic_two, :completed, :grapheme, :setnumber

  has_and_belongs_to_many :words


  	def totalname
		[self.phoneme,self.grapheme,self.mneumonic].join"_"
	end

end

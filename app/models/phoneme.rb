class Phoneme < ActiveRecord::Base
  attr_accessible :phoneme, :programsession_ids, :section_ids, :word_ids, 
  :imagepossible, :mneumonic, :mneumonic_two, :completed, :grapheme, :setnumber, :phonemeorder, :cms_id

  has_and_belongs_to_many :words


  	def totalname
  		self.mneumonic.replace(" ","_")
		[self.phoneme,self.grapheme,self.mneumonic].join"_"
	end

	def imagename
		[self.grapheme,self.phoneme].join"_"
	end

	def mnemonicname
		self.mneumonic.gsub(" ","_")
	end

	
end

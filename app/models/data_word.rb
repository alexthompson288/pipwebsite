class DataWord < ActiveRecord::Base
	attr_accessible :section_id, :word_id, :is_target_word, :is_dummy_word, :programsession_id
end

class DataPhoneme < ActiveRecord::Base
	attr_accessible :section_id, :phoneme_id, :is_target_phoneme, :is_dummy_phoneme, :programsession_id

	belongs_to :phoneme
end

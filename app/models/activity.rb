class Activity < ActiveRecord::Base
	attr_accessible :account_username, :child_name, :has_completed, :start,
	:end, :core_skill, :session_identifier, :scene, :set_num, :section_id, :num_answers,
	:phoneme_ids, :incorrect_phoneme_ids, :word_ids, :incorrect_word_ids, :story_id,
	:pip_pad_calls, :created_at, :updated_at

end

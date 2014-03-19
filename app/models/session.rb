class Session < ActiveRecord::Base
	attr_accessible :account_username, :child_name, :has_completed,
	:start, :end, :session_identifier, :session_name, :session_type, 
	:scenes, :phoneme_ids, :target_phoneme_id, :word_ids, :target_word_id,
	:keyword_ids, :target_keyword_id, :created_at, :updated_at
end

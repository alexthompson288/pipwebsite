class Sentence < ActiveRecord::Base
	attr_accessible :text, :linking_index, :section_id,
       :is_target_sentence, :is_dummy_sentence, :gametype, :programsession_id,
        :text_french, :text_spanish, :text_mandarin, :cms_id
end

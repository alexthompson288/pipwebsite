class Datasentence < ActiveRecord::Base
	attr_accessible :question, :correctanswer, :dummyanswer1, :dummyanswer2, :good_sentence, 
	:bad_sentence1, :bad_sentence2, :bad_sentence3, :pipisode_id, :programsession_id, :story_id, 
	:programmodule_id, :correct_image_name, :correct_image_url, :dummy_image1_name, :dummy_image1_url,
	 :dummy_image2_name, :dummy_image2_url, :correctsentence, :correctword, :correctimage, :quiz,
	  :question_french, :question_spanish, :question_mandarin, :correct_answer_french,
	   :dummyanswer1_french, :dummyanswer2_french, :correct_answer_spanish, :dummyanswer1_spanish,
	    :dummyanswer2_spanish, :correct_answer_mandarin, :dummyanswer1_mandarin, :dummyanswer2_mandarin,
	     :good_sentence_french, :bad_sentence1_french, :bad_sentence2_french, :bad_sentence3_french,
	      :good_sentence_spanish, :bad_sentence1_spanish, :bad_sentence2_spanish, :bad_sentence3_spanish,
	       :good_sentence_mandarin, :bad_sentence1_mandarin, :bad_sentenece2_mandarin, :bad_sentence3_mandarin

	belongs_to :pipisode
  	belongs_to :story
  	belongs_to :programsession
  	belongs_to :programmodule
  	
end

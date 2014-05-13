class Quizquestion < ActiveRecord::Base

	attr_accessible :question, :correctanswer, :dummyanswer1, :dummyanswer2, 
        :pipisode_id, :programsession_id, :story_id, :porgrammodule_id, :image, :question_french, 
        :question_spanish, :question_mandarin, :correct_answer_french, :correct_answer_spanish, 
        :correct_answer_mandarin, :dummyanswer1_french, :dummyanswer1_spanish, :dummyanswer1_mandarin, 
        :dummyanswer2_french, :dummyanswer2_spanish, :dummyanswer2_mandarin

end

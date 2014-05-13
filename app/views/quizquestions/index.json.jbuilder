json.array!(@quizquestions) do |quizquestion|
  json.extract! quizquestion, :id, :question, :correctanswer, :dummyanswer1, :dummyanswer2, :pipisode_id, :programsession_id, :story_id, :porgrammodule_id, :image, :question_french, :question_spanish, :question_mandarin, :correct_answer_french, :correct_answer_spanish, :correct_answer_mandarin, :dummyanswer1_french, :dummyanswer1_spanish, :dummyanswer1_mandarin, :dummyanswer2_french, :dummyanswer2_spanish, :dummyanswer2_mandarin
  json.url quizquestion_url(quizquestion, format: :json)
end

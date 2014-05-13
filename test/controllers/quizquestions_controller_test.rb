require 'test_helper'

class QuizquestionsControllerTest < ActionController::TestCase
  setup do
    @quizquestion = quizquestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quizquestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quizquestion" do
    assert_difference('Quizquestion.count') do
      post :create, quizquestion: { correct_answer_french: @quizquestion.correct_answer_french, correct_answer_mandarin: @quizquestion.correct_answer_mandarin, correct_answer_spanish: @quizquestion.correct_answer_spanish, correctanswer: @quizquestion.correctanswer, dummyanswer1: @quizquestion.dummyanswer1, dummyanswer1_french: @quizquestion.dummyanswer1_french, dummyanswer1_mandarin: @quizquestion.dummyanswer1_mandarin, dummyanswer1_spanish: @quizquestion.dummyanswer1_spanish, dummyanswer2: @quizquestion.dummyanswer2, dummyanswer2_french: @quizquestion.dummyanswer2_french, dummyanswer2_mandarin: @quizquestion.dummyanswer2_mandarin, dummyanswer2_spanish: @quizquestion.dummyanswer2_spanish, image: @quizquestion.image, pipisode_id: @quizquestion.pipisode_id, porgrammodule_id: @quizquestion.porgrammodule_id, programsession_id: @quizquestion.programsession_id, question: @quizquestion.question, question_french: @quizquestion.question_french, question_mandarin: @quizquestion.question_mandarin, question_spanish: @quizquestion.question_spanish, story_id: @quizquestion.story_id }
    end

    assert_redirected_to quizquestion_path(assigns(:quizquestion))
  end

  test "should show quizquestion" do
    get :show, id: @quizquestion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @quizquestion
    assert_response :success
  end

  test "should update quizquestion" do
    patch :update, id: @quizquestion, quizquestion: { correct_answer_french: @quizquestion.correct_answer_french, correct_answer_mandarin: @quizquestion.correct_answer_mandarin, correct_answer_spanish: @quizquestion.correct_answer_spanish, correctanswer: @quizquestion.correctanswer, dummyanswer1: @quizquestion.dummyanswer1, dummyanswer1_french: @quizquestion.dummyanswer1_french, dummyanswer1_mandarin: @quizquestion.dummyanswer1_mandarin, dummyanswer1_spanish: @quizquestion.dummyanswer1_spanish, dummyanswer2: @quizquestion.dummyanswer2, dummyanswer2_french: @quizquestion.dummyanswer2_french, dummyanswer2_mandarin: @quizquestion.dummyanswer2_mandarin, dummyanswer2_spanish: @quizquestion.dummyanswer2_spanish, image: @quizquestion.image, pipisode_id: @quizquestion.pipisode_id, porgrammodule_id: @quizquestion.porgrammodule_id, programsession_id: @quizquestion.programsession_id, question: @quizquestion.question, question_french: @quizquestion.question_french, question_mandarin: @quizquestion.question_mandarin, question_spanish: @quizquestion.question_spanish, story_id: @quizquestion.story_id }
    assert_redirected_to quizquestion_path(assigns(:quizquestion))
  end

  test "should destroy quizquestion" do
    assert_difference('Quizquestion.count', -1) do
      delete :destroy, id: @quizquestion
    end

    assert_redirected_to quizquestions_path
  end
end

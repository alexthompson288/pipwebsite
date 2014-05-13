require 'test_helper'

class DatasentencesControllerTest < ActionController::TestCase
  setup do
    @datasentence = datasentences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datasentences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datasentence" do
    assert_difference('Datasentence.count') do
      post :create, datasentence: { bad_sentence1: @datasentence.bad_sentence1, bad_sentence1_french: @datasentence.bad_sentence1_french, bad_sentence1_mandarin: @datasentence.bad_sentence1_mandarin, bad_sentence1_spanish: @datasentence.bad_sentence1_spanish, bad_sentence2: @datasentence.bad_sentence2, bad_sentence2_french: @datasentence.bad_sentence2_french, bad_sentence2_spanish: @datasentence.bad_sentence2_spanish, bad_sentence3: @datasentence.bad_sentence3, bad_sentence3_french: @datasentence.bad_sentence3_french, bad_sentence3_mandarin: @datasentence.bad_sentence3_mandarin, bad_sentence3_spanish: @datasentence.bad_sentence3_spanish, bad_sentenece2_mandarin: @datasentence.bad_sentenece2_mandarin, correct_answer_french: @datasentence.correct_answer_french, correct_answer_mandarin: @datasentence.correct_answer_mandarin, correct_answer_spanish: @datasentence.correct_answer_spanish, correct_image_name: @datasentence.correct_image_name, correct_image_url: @datasentence.correct_image_url, correctanswer: @datasentence.correctanswer, correctimage: @datasentence.correctimage, correctsentence: @datasentence.correctsentence, correctword: @datasentence.correctword, dummy_image1_name: @datasentence.dummy_image1_name, dummy_image1_url: @datasentence.dummy_image1_url, dummy_image2_name: @datasentence.dummy_image2_name, dummy_image2_url: @datasentence.dummy_image2_url, dummyanswer1: @datasentence.dummyanswer1, dummyanswer1_french: @datasentence.dummyanswer1_french, dummyanswer1_mandarin: @datasentence.dummyanswer1_mandarin, dummyanswer1_spanish: @datasentence.dummyanswer1_spanish, dummyanswer2: @datasentence.dummyanswer2, dummyanswer2_french: @datasentence.dummyanswer2_french, dummyanswer2_mandarin: @datasentence.dummyanswer2_mandarin, dummyanswer2_spanish: @datasentence.dummyanswer2_spanish, good_sentence: @datasentence.good_sentence, good_sentence_french: @datasentence.good_sentence_french, good_sentence_mandarin: @datasentence.good_sentence_mandarin, good_sentence_spanish: @datasentence.good_sentence_spanish, pipisode_id: @datasentence.pipisode_id, programmodule_id: @datasentence.programmodule_id, programsession_id: @datasentence.programsession_id, question: @datasentence.question, question_french: @datasentence.question_french, question_mandarin: @datasentence.question_mandarin, question_spanish: @datasentence.question_spanish, story_id: @datasentence.story_id }
    end

    assert_redirected_to datasentence_path(assigns(:datasentence))
  end

  test "should show datasentence" do
    get :show, id: @datasentence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datasentence
    assert_response :success
  end

  test "should update datasentence" do
    patch :update, id: @datasentence, datasentence: { bad_sentence1: @datasentence.bad_sentence1, bad_sentence1_french: @datasentence.bad_sentence1_french, bad_sentence1_mandarin: @datasentence.bad_sentence1_mandarin, bad_sentence1_spanish: @datasentence.bad_sentence1_spanish, bad_sentence2: @datasentence.bad_sentence2, bad_sentence2_french: @datasentence.bad_sentence2_french, bad_sentence2_spanish: @datasentence.bad_sentence2_spanish, bad_sentence3: @datasentence.bad_sentence3, bad_sentence3_french: @datasentence.bad_sentence3_french, bad_sentence3_mandarin: @datasentence.bad_sentence3_mandarin, bad_sentence3_spanish: @datasentence.bad_sentence3_spanish, bad_sentenece2_mandarin: @datasentence.bad_sentenece2_mandarin, correct_answer_french: @datasentence.correct_answer_french, correct_answer_mandarin: @datasentence.correct_answer_mandarin, correct_answer_spanish: @datasentence.correct_answer_spanish, correct_image_name: @datasentence.correct_image_name, correct_image_url: @datasentence.correct_image_url, correctanswer: @datasentence.correctanswer, correctimage: @datasentence.correctimage, correctsentence: @datasentence.correctsentence, correctword: @datasentence.correctword, dummy_image1_name: @datasentence.dummy_image1_name, dummy_image1_url: @datasentence.dummy_image1_url, dummy_image2_name: @datasentence.dummy_image2_name, dummy_image2_url: @datasentence.dummy_image2_url, dummyanswer1: @datasentence.dummyanswer1, dummyanswer1_french: @datasentence.dummyanswer1_french, dummyanswer1_mandarin: @datasentence.dummyanswer1_mandarin, dummyanswer1_spanish: @datasentence.dummyanswer1_spanish, dummyanswer2: @datasentence.dummyanswer2, dummyanswer2_french: @datasentence.dummyanswer2_french, dummyanswer2_mandarin: @datasentence.dummyanswer2_mandarin, dummyanswer2_spanish: @datasentence.dummyanswer2_spanish, good_sentence: @datasentence.good_sentence, good_sentence_french: @datasentence.good_sentence_french, good_sentence_mandarin: @datasentence.good_sentence_mandarin, good_sentence_spanish: @datasentence.good_sentence_spanish, pipisode_id: @datasentence.pipisode_id, programmodule_id: @datasentence.programmodule_id, programsession_id: @datasentence.programsession_id, question: @datasentence.question, question_french: @datasentence.question_french, question_mandarin: @datasentence.question_mandarin, question_spanish: @datasentence.question_spanish, story_id: @datasentence.story_id }
    assert_redirected_to datasentence_path(assigns(:datasentence))
  end

  test "should destroy datasentence" do
    assert_difference('Datasentence.count', -1) do
      delete :destroy, id: @datasentence
    end

    assert_redirected_to datasentences_path
  end
end

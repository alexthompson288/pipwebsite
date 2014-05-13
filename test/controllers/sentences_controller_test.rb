require 'test_helper'

class SentencesControllerTest < ActionController::TestCase
  setup do
    @sentence = sentences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sentences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sentence" do
    assert_difference('Sentence.count') do
      post :create, sentence: { gametype: @sentence.gametype, is_dummy_sentence: @sentence.is_dummy_sentence, is_target_sentence: @sentence.is_target_sentence, linking_index: @sentence.linking_index, programsession_id: @sentence.programsession_id, section_id: @sentence.section_id, text: @sentence.text, text_french: @sentence.text_french, text_mandarin: @sentence.text_mandarin, text_spanish: @sentence.text_spanish }
    end

    assert_redirected_to sentence_path(assigns(:sentence))
  end

  test "should show sentence" do
    get :show, id: @sentence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sentence
    assert_response :success
  end

  test "should update sentence" do
    patch :update, id: @sentence, sentence: { gametype: @sentence.gametype, is_dummy_sentence: @sentence.is_dummy_sentence, is_target_sentence: @sentence.is_target_sentence, linking_index: @sentence.linking_index, programsession_id: @sentence.programsession_id, section_id: @sentence.section_id, text: @sentence.text, text_french: @sentence.text_french, text_mandarin: @sentence.text_mandarin, text_spanish: @sentence.text_spanish }
    assert_redirected_to sentence_path(assigns(:sentence))
  end

  test "should destroy sentence" do
    assert_difference('Sentence.count', -1) do
      delete :destroy, id: @sentence
    end

    assert_redirected_to sentences_path
  end
end

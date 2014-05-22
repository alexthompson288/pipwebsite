require 'test_helper'

class DataWordsControllerTest < ActionController::TestCase
  setup do
    @data_word = data_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_word" do
    assert_difference('DataWord.count') do
      post :create, data_word: { is_dummy_word: @data_word.is_dummy_word, is_target_word: @data_word.is_target_word, programsession_id: @data_word.programsession_id, section_id: @data_word.section_id, word_id: @data_word.word_id }
    end

    assert_redirected_to data_word_path(assigns(:data_word))
  end

  test "should show data_word" do
    get :show, id: @data_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_word
    assert_response :success
  end

  test "should update data_word" do
    patch :update, id: @data_word, data_word: { is_dummy_word: @data_word.is_dummy_word, is_target_word: @data_word.is_target_word, programsession_id: @data_word.programsession_id, section_id: @data_word.section_id, word_id: @data_word.word_id }
    assert_redirected_to data_word_path(assigns(:data_word))
  end

  test "should destroy data_word" do
    assert_difference('DataWord.count', -1) do
      delete :destroy, id: @data_word
    end

    assert_redirected_to data_words_path
  end
end

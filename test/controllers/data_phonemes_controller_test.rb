require 'test_helper'

class DataPhonemesControllerTest < ActionController::TestCase
  setup do
    @data_phoneme = data_phonemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:data_phonemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create data_phoneme" do
    assert_difference('DataPhoneme.count') do
      post :create, data_phoneme: { is_dummy_phoneme: @data_phoneme.is_dummy_phoneme, is_target_phoneme: @data_phoneme.is_target_phoneme, phoneme_id: @data_phoneme.phoneme_id, programsession_id: @data_phoneme.programsession_id, section_id: @data_phoneme.section_id }
    end

    assert_redirected_to data_phoneme_path(assigns(:data_phoneme))
  end

  test "should show data_phoneme" do
    get :show, id: @data_phoneme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @data_phoneme
    assert_response :success
  end

  test "should update data_phoneme" do
    patch :update, id: @data_phoneme, data_phoneme: { is_dummy_phoneme: @data_phoneme.is_dummy_phoneme, is_target_phoneme: @data_phoneme.is_target_phoneme, phoneme_id: @data_phoneme.phoneme_id, programsession_id: @data_phoneme.programsession_id, section_id: @data_phoneme.section_id }
    assert_redirected_to data_phoneme_path(assigns(:data_phoneme))
  end

  test "should destroy data_phoneme" do
    assert_difference('DataPhoneme.count', -1) do
      delete :destroy, id: @data_phoneme
    end

    assert_redirected_to data_phonemes_path
  end
end

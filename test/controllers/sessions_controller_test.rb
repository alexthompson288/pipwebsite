require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    @session = sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create session" do
    assert_difference('Session.count') do
      post :create, session: { account_username: @session.account_username, child_name: @session.child_name, end: @session.end, has_completed: @session.has_completed, keyword_ids: @session.keyword_ids, phoneme_ids: @session.phoneme_ids, scenes: @session.scenes, session_id: @session.session_id, session_identifier: @session.session_identifier, session_name: @session.session_name, session_number: @session.session_number, session_type: @session.session_type, start: @session.start, target_keyword_id: @session.target_keyword_id, target_phoneme_id: @session.target_phoneme_id, target_word_id: @session.target_word_id, word_ids: @session.word_ids }
    end

    assert_redirected_to session_path(assigns(:session))
  end

  test "should show session" do
    get :show, id: @session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @session
    assert_response :success
  end

  test "should update session" do
    patch :update, id: @session, session: { account_username: @session.account_username, child_name: @session.child_name, end: @session.end, has_completed: @session.has_completed, keyword_ids: @session.keyword_ids, phoneme_ids: @session.phoneme_ids, scenes: @session.scenes, session_id: @session.session_id, session_identifier: @session.session_identifier, session_name: @session.session_name, session_number: @session.session_number, session_type: @session.session_type, start: @session.start, target_keyword_id: @session.target_keyword_id, target_phoneme_id: @session.target_phoneme_id, target_word_id: @session.target_word_id, word_ids: @session.word_ids }
    assert_redirected_to session_path(assigns(:session))
  end

  test "should destroy session" do
    assert_difference('Session.count', -1) do
      delete :destroy, id: @session
    end

    assert_redirected_to sessions_path
  end
end

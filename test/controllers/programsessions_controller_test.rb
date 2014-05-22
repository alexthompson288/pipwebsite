require 'test_helper'

class ProgramsessionsControllerTest < ActionController::TestCase
  setup do
    @programsession = programsessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programsessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programsession" do
    assert_difference('Programsession.count') do
      post :create, programsession: { cms_id: @programsession.cms_id, highest_number: @programsession.highest_number, learningobjective: @programsession.learningobjective, learningvoyagebool: @programsession.learningvoyagebool, number: @programsession.number, pipisode_id: @programsession.pipisode_id, programmodule_id: @programsession.programmodule_id, story_id: @programsession.story_id, target_number: @programsession.target_number }
    end

    assert_redirected_to programsession_path(assigns(:programsession))
  end

  test "should show programsession" do
    get :show, id: @programsession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programsession
    assert_response :success
  end

  test "should update programsession" do
    patch :update, id: @programsession, programsession: { cms_id: @programsession.cms_id, highest_number: @programsession.highest_number, learningobjective: @programsession.learningobjective, learningvoyagebool: @programsession.learningvoyagebool, number: @programsession.number, pipisode_id: @programsession.pipisode_id, programmodule_id: @programsession.programmodule_id, story_id: @programsession.story_id, target_number: @programsession.target_number }
    assert_redirected_to programsession_path(assigns(:programsession))
  end

  test "should destroy programsession" do
    assert_difference('Programsession.count', -1) do
      delete :destroy, id: @programsession
    end

    assert_redirected_to programsessions_path
  end
end

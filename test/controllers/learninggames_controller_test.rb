require 'test_helper'

class LearninggamesControllerTest < ActionController::TestCase
  setup do
    @learninggame = learninggames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:learninggames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create learninggame" do
    assert_difference('Learninggame.count') do
      post :create, learninggame: { extension: @learninggame.extension, instructions: @learninggame.instructions, learningobjective: @learninggame.learningobjective, name: @learninggame.name, resources: @learninggame.resources, skill: @learninggame.skill, video: @learninggame.video }
    end

    assert_redirected_to learninggame_path(assigns(:learninggame))
  end

  test "should show learninggame" do
    get :show, id: @learninggame
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @learninggame
    assert_response :success
  end

  test "should update learninggame" do
    patch :update, id: @learninggame, learninggame: { extension: @learninggame.extension, instructions: @learninggame.instructions, learningobjective: @learninggame.learningobjective, name: @learninggame.name, resources: @learninggame.resources, skill: @learninggame.skill, video: @learninggame.video }
    assert_redirected_to learninggame_path(assigns(:learninggame))
  end

  test "should destroy learninggame" do
    assert_difference('Learninggame.count', -1) do
      delete :destroy, id: @learninggame
    end

    assert_redirected_to learninggames_path
  end
end

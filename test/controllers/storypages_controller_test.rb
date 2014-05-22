require 'test_helper'

class StorypagesControllerTest < ActionController::TestCase
  setup do
    @storypage = storypages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storypages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storypage" do
    assert_difference('Storypage.count') do
      post :create, storypage: { audio: @storypage.audio, frenchtext: @storypage.frenchtext, germantext: @storypage.germantext, image: @storypage.image, mandarintext: @storypage.mandarintext, pageorder: @storypage.pageorder, spanishtext: @storypage.spanishtext, story_id: @storypage.story_id, text: @storypage.text }
    end

    assert_redirected_to storypage_path(assigns(:storypage))
  end

  test "should show storypage" do
    get :show, id: @storypage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storypage
    assert_response :success
  end

  test "should update storypage" do
    patch :update, id: @storypage, storypage: { audio: @storypage.audio, frenchtext: @storypage.frenchtext, germantext: @storypage.germantext, image: @storypage.image, mandarintext: @storypage.mandarintext, pageorder: @storypage.pageorder, spanishtext: @storypage.spanishtext, story_id: @storypage.story_id, text: @storypage.text }
    assert_redirected_to storypage_path(assigns(:storypage))
  end

  test "should destroy storypage" do
    assert_difference('Storypage.count', -1) do
      delete :destroy, id: @storypage
    end

    assert_redirected_to storypages_path
  end
end

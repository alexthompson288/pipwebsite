require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  setup do
    @story = stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story" do
    assert_difference('Story.count') do
      post :create, story: { author: @story.author, cms_id: @story.cms_id, description: @story.description, description_french: @story.description_french, description_mandarin: @story.description_mandarin, description_spanish: @story.description_spanish, extra_activities: @story.extra_activities, extra_activities_french: @story.extra_activities_french, extra_activities_mandarin: @story.extra_activities_mandarin, extra_activities_spanish: @story.extra_activities_spanish, programmodule_id: @story.programmodule_id, publishable: @story.publishable, storycoverartwork: @story.storycoverartwork, storyset_id: @story.storyset_id, storytype: @story.storytype, title: @story.title, title_french: @story.title_french, title_mandarin: @story.title_mandarin, title_spanish: @story.title_spanish }
    end

    assert_redirected_to story_path(assigns(:story))
  end

  test "should show story" do
    get :show, id: @story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story
    assert_response :success
  end

  test "should update story" do
    patch :update, id: @story, story: { author: @story.author, cms_id: @story.cms_id, description: @story.description, description_french: @story.description_french, description_mandarin: @story.description_mandarin, description_spanish: @story.description_spanish, extra_activities: @story.extra_activities, extra_activities_french: @story.extra_activities_french, extra_activities_mandarin: @story.extra_activities_mandarin, extra_activities_spanish: @story.extra_activities_spanish, programmodule_id: @story.programmodule_id, publishable: @story.publishable, storycoverartwork: @story.storycoverartwork, storyset_id: @story.storyset_id, storytype: @story.storytype, title: @story.title, title_french: @story.title_french, title_mandarin: @story.title_mandarin, title_spanish: @story.title_spanish }
    assert_redirected_to story_path(assigns(:story))
  end

  test "should destroy story" do
    assert_difference('Story.count', -1) do
      delete :destroy, id: @story
    end

    assert_redirected_to stories_path
  end
end

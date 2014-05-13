require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { blue: @post.blue, body_text: @post.body_text, green: @post.green, image_url: @post.image_url, lilac: @post.lilac, linklabel: @post.linklabel, orange: @post.orange, order_number: @post.order_number, pink: @post.pink, priority_level: @post.priority_level, publishable: @post.publishable, red: @post.red, subject_english: @post.subject_english, subject_maths: @post.subject_maths, subject_reading: @post.subject_reading, subject_world: @post.subject_world, title: @post.title, type: @post.type, url: @post.url, video_url: @post.video_url, yellow: @post.yellow }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { blue: @post.blue, body_text: @post.body_text, green: @post.green, image_url: @post.image_url, lilac: @post.lilac, linklabel: @post.linklabel, orange: @post.orange, order_number: @post.order_number, pink: @post.pink, priority_level: @post.priority_level, publishable: @post.publishable, red: @post.red, subject_english: @post.subject_english, subject_maths: @post.subject_maths, subject_reading: @post.subject_reading, subject_world: @post.subject_world, title: @post.title, type: @post.type, url: @post.url, video_url: @post.video_url, yellow: @post.yellow }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end

require 'test_helper'

class PipisodesControllerTest < ActionController::TestCase
  setup do
    @pipisode = pipisodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pipisodes)
  end

  test "should show pipisode" do
    get :show, id: @pipisode
    assert_response :success
  end
end

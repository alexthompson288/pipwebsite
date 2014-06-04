require 'test_helper'

class WordsControllerTest < ActionController::TestCase
  setup do
    @word = words(:one)
  end

  test "should show word" do
    get :show, id: @word
    assert_response :success
  end
end

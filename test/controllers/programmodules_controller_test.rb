require 'test_helper'

class ProgrammodulesControllerTest < ActionController::TestCase
  setup do
    @programmodule = programmodules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:programmodules)
  end

  test "should show programmodule" do
    get :show, id: @programmodule
    assert_response :success
  end
end

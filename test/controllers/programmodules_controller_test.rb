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

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create programmodule" do
    assert_difference('Programmodule.count') do
      post :create, programmodule: { cms_id: @programmodule.cms_id, colour: @programmodule.colour, number: @programmodule.number, phaselevel: @programmodule.phaselevel, programmename: @programmodule.programmename }
    end

    assert_redirected_to programmodule_path(assigns(:programmodule))
  end

  test "should show programmodule" do
    get :show, id: @programmodule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @programmodule
    assert_response :success
  end

  test "should update programmodule" do
    patch :update, id: @programmodule, programmodule: { cms_id: @programmodule.cms_id, colour: @programmodule.colour, number: @programmodule.number, phaselevel: @programmodule.phaselevel, programmename: @programmodule.programmename }
    assert_redirected_to programmodule_path(assigns(:programmodule))
  end

  test "should destroy programmodule" do
    assert_difference('Programmodule.count', -1) do
      delete :destroy, id: @programmodule
    end

    assert_redirected_to programmodules_path
  end
end

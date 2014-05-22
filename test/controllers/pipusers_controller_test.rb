require 'test_helper'

class PipusersControllerTest < ActionController::TestCase
  setup do
    @pipuser = pipusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pipusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pipuser" do
    assert_difference('Pipuser.count') do
      post :create, pipuser: { account_username: @pipuser.account_username, country: @pipuser.country, first_name: @pipuser.first_name, ip_address: @pipuser.ip_address, last_name: @pipuser.last_name, postcode: @pipuser.postcode }
    end

    assert_redirected_to pipuser_path(assigns(:pipuser))
  end

  test "should show pipuser" do
    get :show, id: @pipuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pipuser
    assert_response :success
  end

  test "should update pipuser" do
    patch :update, id: @pipuser, pipuser: { account_username: @pipuser.account_username, country: @pipuser.country, first_name: @pipuser.first_name, ip_address: @pipuser.ip_address, last_name: @pipuser.last_name, postcode: @pipuser.postcode }
    assert_redirected_to pipuser_path(assigns(:pipuser))
  end

  test "should destroy pipuser" do
    assert_difference('Pipuser.count', -1) do
      delete :destroy, id: @pipuser
    end

    assert_redirected_to pipusers_path
  end
end

require 'test_helper'

class GlossarytermsControllerTest < ActionController::TestCase
  setup do
    @glossaryterm = glossaryterms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:glossaryterms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create glossaryterm" do
    assert_difference('Glossaryterm.count') do
      post :create, glossaryterm: { description: @glossaryterm.description, term: @glossaryterm.term }
    end

    assert_redirected_to glossaryterm_path(assigns(:glossaryterm))
  end

  test "should show glossaryterm" do
    get :show, id: @glossaryterm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @glossaryterm
    assert_response :success
  end

  test "should update glossaryterm" do
    patch :update, id: @glossaryterm, glossaryterm: { description: @glossaryterm.description, term: @glossaryterm.term }
    assert_redirected_to glossaryterm_path(assigns(:glossaryterm))
  end

  test "should destroy glossaryterm" do
    assert_difference('Glossaryterm.count', -1) do
      delete :destroy, id: @glossaryterm
    end

    assert_redirected_to glossaryterms_path
  end
end

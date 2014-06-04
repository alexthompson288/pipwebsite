require 'test_helper'

class ProgramsessionsControllerTest < ActionController::TestCase
  setup do
    @programsession = programsessions(:one)
  end

  test "should show programsession" do
    get :show, id: @programsession
    assert_response :success
  end
end

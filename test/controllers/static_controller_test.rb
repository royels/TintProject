require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get form" do
    get :form
    assert_response :success
  end

  test "should get display" do
    get :display
    assert_response :success
  end

end

require 'test_helper'

class UsersControllerTest < ActionController::TestCase
 include Devise::Test::ControllerHelpers
  test "should get new" do
    get :new
    assert_response :success
  end

end

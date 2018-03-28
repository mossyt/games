require 'test_helper'

class CartsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "should get show" do
    get :show
    assert_response :success
  end

end

require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get charts" do
    get :charts
    assert_response :success
  end

  
end

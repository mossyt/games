require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | Beast Games App"
  end

  test "should get charts" do
    get :charts
    assert_response :success
    assert_select "title", "Charts | Beast Games App"
  end

  
end

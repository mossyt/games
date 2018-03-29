require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "should get buy games" do
    get :index
    assert_response :success
    assert_select "title", "Buy Games | Beast Games App"
  end
end  
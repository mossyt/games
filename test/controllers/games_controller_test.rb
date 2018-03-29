require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "should get games" do
    get :index
    assert_response :success
    assert_select "title", "Games | Beast Games App"
  end
end  
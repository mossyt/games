require 'test_helper'

class TweetsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  test "should get tweets" do
    get :index
    assert_response :success
    assert_select "title", "Tweets | Beast Games App"
  end
end  
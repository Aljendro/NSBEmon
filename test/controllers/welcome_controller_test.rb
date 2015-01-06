require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get members" do
    get :members
    assert_response :success
  end

  test "should get about_nsbemon" do
    get :about_nsbemon
    assert_response :success
  end

end

require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get features" do
    get :features
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end

require 'test_helper'

class UserholidaysControllerTest < ActionController::TestCase
  setup do
    @userholiday = userholidays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userholidays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userholiday" do
    assert_difference('Userholiday.count') do
      post :create, userholiday: { duration: @userholiday.duration, end: @userholiday.end, managersName: @userholiday.managersName, start: @userholiday.start, username: @userholiday.username }
    end

    assert_redirected_to userholiday_path(assigns(:userholiday))
  end

  test "should show userholiday" do
    get :show, id: @userholiday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userholiday
    assert_response :success
  end

  test "should update userholiday" do
    patch :update, id: @userholiday, userholiday: { duration: @userholiday.duration, end: @userholiday.end, managersName: @userholiday.managersName, start: @userholiday.start, username: @userholiday.username }
    assert_redirected_to userholiday_path(assigns(:userholiday))
  end

  test "should destroy userholiday" do
    assert_difference('Userholiday.count', -1) do
      delete :destroy, id: @userholiday
    end

    assert_redirected_to userholidays_path
  end
end

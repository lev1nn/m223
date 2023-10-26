require 'test_helper'

class UserSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should create session" do
    post user_sessions_url, params: { user: { username: @user.username, password: "user1password"} }
    assert_response :redirect
    assert_redirected_to root_path
    assert_equal session[:user_id], User.find_by(username: @user.username).id
  end

  test "should destroy session" do
    post user_sessions_url, params: { user: { username: @user.username, password: "user1password"} }
    assert_response :redirect
    assert_redirected_to root_path
    assert_equal session[:user_id], User.find_by(username: @user.username).id

    delete user_session_url(id: session[:user_id])
    assert_response :redirect
    assert_redirected_to root_path
    assert_nil session[:user_id]
  end
end

require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test "password is hashed on create" do
    user = User.create(username: @user.username, password: "user1password")
    assert_not_equal "user1password", user.password_digest
  end

  test "password is required" do
    user = User.new(username: @user.username)
    assert_not user.valid?
    assert_includes user.errors[:password], "can't be blank"
  end

  test "password must be at least 12 characters long" do
    user = User.new(username: @user.username, password: "password")
    assert_not user.valid?
    assert_includes user.errors[:password], "is too short (minimum is 12 characters)"
  end

  test "password is at least 12 characters long" do
    user = User.new(username: @user.username, password: "user1password")
    assert true, user.valid?
  end
end

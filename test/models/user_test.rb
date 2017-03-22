require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "should not save user without a name" do
    user = User.new
    assert_not user.save
  end

  test "should ensure specified name error message" do
    user = User.new
    assert_not user.save
    user.valid?
    assert_equal user.errors.messages[:name], ["Name can not be empty. Please enter your name"]
  end

  test "should not save user without email" do
    user = User.new
    user.name = "test1"
    assert_not user.save
  end

end

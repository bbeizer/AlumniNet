require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "new user creation" do
    user = User.new
    assert true
  end
  test "proper email" do
    user = User.new
    user.email = "test@gmail.com"
    assert true
  end
  test "deny improper emails" do
    user = User.new
    user.email = "notanemail"
    assert false
  end
  test "deny bad passwords" do
    user = User.new
    user.password = "notagoodpass"
    assert false
  end
  test "allow good password" do
    user = User.new
    user.password = "goodpass123!"
    assert true
  end
end

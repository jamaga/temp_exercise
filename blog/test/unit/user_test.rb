require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'should have necessary validators' do
    user = User.new
    assert !user.valid?
    assert_equal [:email, :password, :password_confirmation, :remember_me, :avatar, :remove_avatar], user.errors.keys
  end
end

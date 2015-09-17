require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'should have necessary validators' do
    user = User.new
    assert !user.valid?
    #jak dodaje nowego uzytkownika na fromularzu - chemy tylkko EMAIL i PASSWORD
    assert_equal [:email, :password], user.errors.keys
  end
end

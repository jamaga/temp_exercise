require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'should have necessary validators' do
    user = User.new
    assert !user.valid?
    #jak dodaje nowego uzytkownika na fromularzu - chemy tylkko EMAIL i PASSWORD
    assert_equal [:email, :password], user.errors.keys
  end

  test 'should add new user' do
    user = User.new({:email => 'ppaa@op.pl', :password => 'haszlo'})
    user.save
    assert_equal 'ppaa@op.pl', user.email
    assert_equal 'haszlo', user.password
  end

  test 'should save user with avatar' do
    user = User.new({:email => 'ppaa@op.pl', :password => 'haszlo', :avatar_file_name => 'wczytany plik'})
    user.save
    assert_equal 'wczytany plik', user.avatar_file_name
  end

  test 'should save user with deleted avatar' do

  end
end

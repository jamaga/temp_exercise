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

  #ale tutaj musialam sobie zakomentowac private w user.rb bo inaczej mialam blad:
  # NoMethodError: private method `delete_avatar' called for #<User:0x007ff195549000>

  test 'should remove user avatar' do
    user = User.new({:email => 'ppaa@op.pl', :password => 'haszlo', :avatar_file_name => 'wczytany plik'})
    user.save
    #user.remove_avatar && !user.avatar_updated_at_changed?
    user.avatar = nil
    user.save
    assert_equal nil, user.avatar_file_name
  end
end

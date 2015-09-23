require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test 'should have all the necessary required validators' do
    post = Post.new
    assert !post.valid?
    assert_equal [:body, :title], post.errors.keys
  end

  test 'should not save post without body or title' do
    user = User.first
    post = user.posts.build
    assert !post.save
    post.body = 'post test body'
    assert !post.save
    post.title = 'post test title'
    assert post.save
  end

  test 'should have full title' do
    user = User.first
    post = user.posts.build({:title => 'tytul', :body => 'jakis kontent', :updated_at => '2015-09-02 05:47:23'})
    post.save
    assert_equal 'tytul [09/02/2015]', post.full_title
  end

  test 'should save post with avatar' do
    post = Post.new({:body => 'post body', :title => 'jakis tytul', :avatar_file_name => 'jakis avatar'})
    post.save
    assert_equal 'jakis avatar', post.avatar_file_name
  end

  test 'must be ordered ASC by updated date' do
    posts_title = Post.ordered('ASC').pluck(:title)
    assert_equal ["MyString", "MyString2"], posts_title
  end

  test 'must be ordered DESC by updated date' do
    posts_title = Post.ordered('DESC').pluck(:title)
    assert_equal ["MyString2", "MyString"], posts_title
  end
end

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
end

require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test 'should have all the necessary required validators' do
    post = Post.new
    assert !post.valid?
    assert_equal [:body, :title], post.errors.keys
  end

  test 'should not save post without body or title' do
    post = Post.new
    assert !post.save
    post.body = 'post test body'
    assert !post.save
    post.title = 'post test title'
    assert !post.save
  end
end

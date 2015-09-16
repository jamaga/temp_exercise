require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test 'should have necessary required validators' do
    comment = Comment.new
    assert !comment.valid?
    assert_equal [:body, :author], comment.errors.keys
  end
end

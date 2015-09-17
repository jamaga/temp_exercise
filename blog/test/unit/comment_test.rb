require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  #TEN TEST NIE DZIALA - dlaczego w innych dzialaja analogiczne testy a tu nie?
  test 'should have necessary required validators' do
    comment = Comment.new
    assert !comment.valid?
    assert_equal [:body, :author], comment.errors.keys
  end

  #jaki test tu zrobic? testujacy czy z kontrolera redirectuje?
  test 'should save comment with body and author' do
    comment = Comment.new({:body => 'cialo komentarza', :author => 'ktostam'})
    comment.save
    assert_equal 'cialo komentarza', comment.body
    assert_equal 'ktostam', comment.author
  end
end

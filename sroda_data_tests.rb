require 'test/unit'
require './sroda_data'

class DateTest < Test::Unit::TestCase

  def test_compare_two_dates
    dc = DateCompare.new('2015-04-25', '2015-04-28')
    assert_equal 3, dc.diff_days

    dc2 = DateCompare.new('2015-05-01', '2014-05-01')
    assert_equal -365, dc2.diff_days

  end

end


=begin

1. Napisać program "DateCompare", który oblicza różnicę dni między datami.
                                                                       * input: dwie daty
* output: integer - różnica między datami (ilość dni)

np.
    dc = new DateCompare('2015-04-25', '2015-04-28')
puts dc.diff_days # => 3

dc = new DateCompare('2015-05-01', '2014-05-01')
puts dc.diff_days # => -365
=end

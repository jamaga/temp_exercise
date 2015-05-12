require 'date'

class DateCompare

  def initialize(date2, date1)
    @date2 = date2
    @date1 = date1
  end

  def diff_days
    Date.parse(@date1).mjd - Date.parse(@date2).mjd
  end

end


=begin
class DateTest < Test::Unit::TestCase

  def test_compare_two_dates
    dc = DateCompare.new('2015-04-25', '2015-04-28')
    assert_equal 3, dc.diff_days

    dc2 = DateCompare.new('2015-05-01', '2014-05-01')
    assert_equal -365, dc2.diff_days

  end

end
=end

=begin

roznica miedzy jena data a druga!!! ile minelo od jakiegos czasu kiedy uzytkownik wszedl itp…...
    2.1.5 :002 > require 'date'
=> true
2.1.5 :003 > Date.parse('2015-05-01').mjd - Date.parse('2014-05-01').mjd
=> 365
2.1.5 :004 >
=end

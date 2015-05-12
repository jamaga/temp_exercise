require 'test/unit'
require './data_pdom_12may'

class Date12mayTest < Test::Unit::TestCase

  def setup
    @dates = Date12may.new('stats.txt')
  end

  def test_if_returns_correct_dates_format
    assert_equal Time.parse('2015-05-06 08:13:07 +0200'), @dates.good_time[0]
  end

end

#zabraklo sprawdzenia ilosci dat - czy n w liku beda 4 linie a nie 3
#mozna sprawdzic kazda kolejna date - czy np siodma czy kolejna dobrze sie zazmienia
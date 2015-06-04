require 'test/unit'
require './04czerwiec_testy_plus_kod'

class LettersChangeTest < Test::Unit::TestCase

  def test_get_description
    #metoda statyczna! i trzeba self do niej
    assert_equal 'aLA Ma KoTa', LettersChange.get_description('Ala mA kOtA')
  end

end
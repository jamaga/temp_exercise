require 'test/unit'
require './28maj_pdom2'

class TabelkaTest < Test::Unit::TestCase

  def setup
    @base = Tabelka.new('28maj_padom2_tabelki.txt')
  end

  def test_adding_columns
    assert_equal [3.5, 14.0, 9.0, 77.0, 0], @base.run
  end

end



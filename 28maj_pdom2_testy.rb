require 'test/unit'
require './28maj_pdom2'

class TabelkaTest < Test::Unit::TestCase

  def setup
    @base = Tabelka.new('28maj_padom2_tabelki.txt')
  end

  p @base

  def test_adding_columns
    assert_equal [3.5, 14, 9, 77, 0], @base.run
  end

end

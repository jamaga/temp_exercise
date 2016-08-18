require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_main

    assert_equal [
                     ['ala', 'basia', 'kasia'],
                     ['ma', 'niema'],
                     ['bialego'],
                     ['kota', 'psa', 'mysz']
                 ],
                 Main.build_array('Ala ma bialego kota. Basia niema psa. Kasia mysz.')
  end
end

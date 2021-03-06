require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_main

    assert_equal [
                     ['ala', 'basia', 'kasia'],
                     ['ma', 'nie ma'],
                     ['kota', 'psa', 'mysz']
                 ],
                 Main.build_array('Ala, Basia, Kasia; ma, nie ma; Kota, Psa, Mysz')
  end
end

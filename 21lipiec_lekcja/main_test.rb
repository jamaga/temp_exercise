require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_one
    assert_equal 'Ala i Ela ma kota. Basia jest fajna. Tomek i Maciek chce wyjechać.', Main.transform(
        [
            ['ala', 'ela'],
            ['basia'],
            ['tomek', 'maciek']
        ],

        [
            ['ma', 'kota'],
            ['jest', 'fajna'],
            ['chce', 'wyjechać']
        ]
    )

  end
end

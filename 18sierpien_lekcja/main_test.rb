require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase


  def test_transform


    assert_equal 'Kota ma Ala.', Main.transform([
           "ala", "ma", "kota"
        ])

    assert_equal 'Psa wielkiego ma Wojtek.', Main.transform([
           "wojtek", "ma", "wielkiego", "psa"
        ])
  end
end

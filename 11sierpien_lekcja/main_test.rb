require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_method
    assert_equal "- hello | world\n- witaj | swiecie", Main.transform({
                                                                          "hello" => "world",
                                                                          "witaj" => "swiecie"
                                                                      })


  end
end

# chcemy otrzymac string:
#                     - hello | world
#                     - witaj | swiecie
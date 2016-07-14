require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_one
    assert_equal 'Ala ma kota. Basia nie ma psa.',
                 Main.transform([
                  ['kota', 'psa'],
                  ['ma', 'nie ma'],
                  ['ala', 'basia'],
                  ])

    assert_equal 'Ala ma 2 koty. Basia nie ma żadnego psa.', Main.transform([
                                        ['koty', 'psa'],
                                        ['2', 'żadnego'],
                                        ['ma', 'nie ma'],
                                        ['ala', 'basia'],
                                    ])

  end
end
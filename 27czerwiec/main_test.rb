require 'test/unit'
require './main_class.rb'

class MainTest < Test::Unit::TestCase

  def test_main

    assert_equal 'Ala ma kota. Basia nie ma. Kasia.', Main.build_string(
    [
      ["ala", "basia", "kasia"],
      ["ma", "nie ma", "", nil],
      ["kota", nil, nil, nil, nil]
    ])

    assert_equal 'Ala ma kota. Basia nie ma. Kasia.', Main.build_string(
    [
      ["ala", "basia", "kasia"],
      ["ma", "nie ma"],
      ["kota"]
    ])


    assert_equal 'Ala ma kota. Basia nie ma. Kasia też.', Main.build_string(
    [
      ["ala", "basia", "kasia"],
      ["ma", "nie ma", "też"],
      ["kota"]
    ])

    assert_equal 'Ala ma kota. Basia nie ma psa. Kasia też.', Main.build_string(
    [
      ["ala", "basia", "kasia"],
      ["ma", "nie ma", "też"],
      ["kota", "psa", ""]
    ])

    assert_equal 'Ala ma kota. Basia nie ma psa. Kasia też.', Main.build_string(
    [
      ["ala", "basia", "kasia"],
      ["ma", "nie ma", "też", "nic"],
      ["kota", "psa", "", "psa"]
    ])

    assert_equal 'Ala ma kota. Basia nie ma psa. Kasia też. Wojtek psa.', Main.build_string(
    [
      ["ala", "basia", "kasia", "wojtek"],
      ["ma", "nie ma", "też"],
      ["kota", "psa", "", "psa", "kota"]
    ])

  end
end

#za duzo elementow - pomijamy
#za malo - to uywamy tylko tam gdzie sa przypisane


# [
#   ["ala", "basia", "kasia"]
#   ["ma", "nie ma"],
#   ["kota"]
# ]
#w 1wsze tablicy - eleemty ile chcemy
#jesli w 2 tablicy jest tyle samo lelemynw  - to nie ma problmu z laczeniem
#3cia tablica
# powinno byc ala ma kota
# basia nie ma
# kasia


#jesli jest za duzo elelentow - nie uzywamy ich

# napisac program ktory wypisze zdania
# uzywajac imion z duzej litery.
# kazde zdanie ma byc po kropce
# wynik to ma byc string

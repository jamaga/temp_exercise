# rubocop:disable Metrics/MethodLength

require 'test/unit'
require './05czerwiec_pdom_rymy.rb'

class MyHouseTest < Test::Unit::TestCase
  def test_rhyme
    expected = <<-RHYME
    This is the house that Jack built.

    This is the malt
    that lay in the house that Jack built.

    This is the rat
    that ate the malt
    that lay in the house that Jack built.

    This is the cat
    that killed the rat
    that ate the malt
    that lay in the house that Jack built.

    This is the dog
    that worried the cat
    that killed the rat
    that ate the malt
    that lay in the house that Jack built.

    This is the cow with the crumpled horn
    that tossed the dog
    that worried the cat
    that killed the rat
    that ate the malt
    that lay in the house that Jack built.

    This is the maiden all forlorn
    that milked the cow with the crumpled horn
    that tossed the dog
    that worried the cat
    that killed the rat
    that ate the malt
    that lay in the house that Jack built.

    This is the man all tattered and torn
    that kissed the maiden all forlorn
    that milked the cow with the crumpled horn
    that tossed the dog
    that worried the cat
    that killed the rat
    that ate the malt
    that lay in the house that Jack built.

    This is the priest all shaven and shorn
    that married the man all tattered and torn
    that kissed the maiden all forlorn
    that milked the cow with the crumpled horn
    that tossed the dog
    that worried the cat
    that killed the rat
    that ate the malt
    that lay in the house that Jack built.

    This is the rooster that crowed in the morn
    that woke the priest all shaven and shorn
    that married the man all tattered and torn
    that kissed the maiden all forlorn
    that milked the cow with the crumpled horn
    that tossed the dog
    that worried the cat
    that killed the rat
    that ate the malt
    that lay in the house that Jack built.

    This is the farmer sowing his corn
    that kept the rooster that crowed in the morn
    that woke the priest all shaven and shorn
    that married the man all tattered and torn
    that kissed the maiden all forlorn
    that milked the cow with the crumpled horn
    that tossed the dog
    that worried the cat
    that killed the rat
    that ate the malt
    that lay in the house that Jack built.

    This is the horse and the hound and the horn
    that belonged to the farmer sowing his corn
    that kept the rooster that crowed in the morn
    that woke the priest all shaven and shorn
    that married the man all tattered and torn
    that kissed the maiden all forlorn
    that milked the cow with the crumpled horn
    that tossed the dog
    that worried the cat
    that killed the rat
    that ate the malt
    that lay in the house that Jack built.
        RHYME
    assert_equal expected, MyHouse.recite
  end
end
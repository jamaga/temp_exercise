class MyHouse
  def self.recite
    MyHouse.new.recite
  end

  def recite
    12.times.reduce([]) do |lyrics, num|
      lyrics << verse(num)
    end.join("\n")
  end

  def verse(num)
    this_is_the(num) + that(num)
  end

  czas = [
      'lay in',
      'ate',
      'killed',
      'worried',
      'tossed',
      'milked',
      'kissed',
      'married',
      'woke',
      'kept',
      'belonged to'
  ]

  rzecz = [
      'house that Jack built.',
      'malt',
      'rat',
      'cat',
      'dog',
      'cow with the crumpled horn',
      'maiden all forlorn',
      'man all tattered and torn',
      'priest all shaven and shorn',
      'rooster that crowed in the morn',
      'farmer sowing his corn',
      'horse and the hound and the horn'
  ]

  def x(verse)
    "This is the #{rzecz[verse]}\n "
  end

  end
end
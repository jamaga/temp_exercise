def twice
  yield
  yield
end

# 1
# twice do
#   puts "Hello!"
# end

# 2
twice { puts "Hello!" }

#yield - instrukcja ktora wykonuje okreslony blok przekazany do metody tutaj twice - musi byc jak BLOK!
#each tez tak samo


def twice
  if block_given?  #jesli jest - wyswietla blok, inaczej wyprintuj na ekran
    yield '1'
    yield '2'
  else
    puts "Dzisiaj mam wolne :)"
  end
end

twice do |elem|
  puts "Hello #{elem}"
end

twice

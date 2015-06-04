def twice(a)
    yield a
end

twice(2) do |elem|   #2 stalo sie moim a - a yield sprawil ze a zwrocil sie jako elem
  puts "Hello #{elem}"
end

#stosowanie:
# pokazanie funkcji co dziala tak samo a istnieje - each

#layout - w railsach i tam jest html   - yielda uzywa sie zeby uzyc js
#wstwiamy w heada
#to samo z metatags  - takie zastosowanie

#<title><%= yield(:title) %> | TITLE</title>    i z jakiejs story mozna by wywolywac
#   <%= yield %>    - i strona sie laduje w to miejsce
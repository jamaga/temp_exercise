# [{'title' => 'Dom'},{'title' => 'Praca'},{'title' => 'Zabawa'}]
# chce stworzyc Funkcje ktora zwroci mi to:
# Dom -> Praca -> Zabawa

aaa = [{'title' => 'Dom', 'time' => '8:00'},{'title' => 'Praca', 'time' => '10:00'},{'title' => 'Zabawa', 'time' => '19:00'}]

def transform(array)
  #puts array.inspect
  result = []

  array.each do |el|

    # p el['title'].split(' -> ')
    result << el['title']
    #puts el.values.join.inspect
    #el.values.
    #result << el.values
  end

  result.join(' -> ').to_str

end

p transform(aaa)





# {'title' => 'Dom’, ‘aaaaa’ => ‘asdsadasd’}
# h.values # => [‘Dom’, 'asdsadasd’]


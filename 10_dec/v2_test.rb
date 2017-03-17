
















Napisz klasę, która będzie działała na zasadzie TODO listy.
#     Przykład wywołań poniżej:
#
# t = Todo.new
# t.list # => []
# t.add('8:00', 'Zakupy') # => 1  #oznaczamy nowobudowany hash ktory BEDZIE (w przyszlosci) pierwszy na liscie
# t.list # => [{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'}]
# t.add('7:00', 'Śniadanie') # => 2
# t.list # => [{'id' => 2, 'time' => '7:00', 'title' => 'Śniadanie'},{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'}]
# t.add('9:00', 'Praca') # => 3
# t.list # => [{'id' => 2, 'time' => '7:00', 'title' => 'Śniadanie'},{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'},{'id' => 3, 'time' => '9:00', 'title' => 'Praca'}]
# t.show(2) # => {'id' => 2, 'time' => '7:00', 'title' => 'Śniadanie'}
# t.remove(2) # => true
# t.list # => [{'id' => 1, 'time' => '8:00', 'title' => 'Zakupy'},{'id' => 3, 'time' => '9:00', 'title' => 'Praca'}]
#
# Czyli do zrobienia jest klasa Todo, która będzie mieć metody:
#                                                           list, add, show, remove
# Ponadto chciałbym byś zrobiła do tego unit testy (pamiętając o zasadzie że najpierw piszemy testy później kod programu).
#     Zwróć uwagę także na sortowanie listy wg godziny.
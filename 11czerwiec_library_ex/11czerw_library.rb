class Library
  attr_accessor :checked_out_books

  def initialize(library_db)
    @library_db = library_db
    @checkout_books = []
  end

  def list
    @library_db.map { |book| book[:title] }
  end

  def get_id(title)
    @library_db.detect { |book| book[:title] == title }[:id]
  end

  def get_book(id)
    found_book_title = @library_db.detect { |book| book[:id] == id }[:title]
    found_book_title
    found_book = { id: id, title: found_book_title }

    @library_db.reject { |one_book| one_book[:id] == id}[:title]
    @checkout_books << found_book

  end

  # def return_book(id)
  #   @library_db <<
  # end

end


# 1. Błąd: undefined method `list' for występuje gdyż @data nie jest
#  obiektem! Twoim obiektem jest library i na tym możesz wywołać metodę list
# 2. Testy: test_get_book i test_return_book są źle napisane gdyż:
#     a.) nadpisujesz zmienną @data a nie powinnaś (@data powinno być tylko
#  przekazywane do konstruktora)

#     b.) library.get_book(1) powinno zwracać książkę
# którą wypożyczyłaś czyli np. "Alicja w krainie czarow" a nie liste!!!
#
# Więc w tym wypadku powinnaś
# najpierw "wypożyczyć" książkę a później sprawdzić listę.
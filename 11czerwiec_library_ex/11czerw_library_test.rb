require 'test/unit'
require './11czerw_library'

class LibraryTest < Test::Unit::TestCase

  def setup
    @data = [
        { id: 1, title: "Alicja w krainie czarow" },
        { id: 2, title: "Chlopcy z pracu broni" },
        { id: 3, title: "Pan Tadeusz" },
    ]

    @books_out_of_lib = [ ]
  end

  def test_listing_of_books
    library = Library.new(@data)
    assert_equal library.list,  ["Alicja w krainie czarow", "Chlopcy z pracu broni", "Pan Tadeusz"]
  end

  def test_get_id
    library = Library.new(@data)
    assert_equal library.get_id("Alicja w krainie czarow"), 1
  end

  def test_get_book
    library = Library.new(@data)
    @data = library.get_book(1)
    assert_equal @data, [{ id: 2, title: "Chlopcy z pracu broni" }, { id: 3, title: "Pan Tadeusz" }]
   # assert_equal @data.list, [{ id: 2, title: "Chlopcy z pracu broni" }, { id: 3, title: "Pan Tadeusz" }]
  end

  def test_return_book
    library = Library.new(@data)
  end

end


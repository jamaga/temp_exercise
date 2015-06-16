require 'test/unit'
require './11czerw_library'

class LibraryTest < Test::Unit::TestCase

  def setup
    @data = [
        { id: 1, title: "Alicja w krainie czarow" },
        { id: 2, title: "Chlopcy z pracu broni" },
        { id: 3, title: "Pan Tadeusz" },
    ]
  end

  def test_listing_of_books
    @library = Library.new(@data)
    assert_equal @library.list,  ["Alicja w krainie czarow", "Chlopcy z pracu broni", "Pan Tadeusz"]
  end

  def test_get_id
    @library = Library.new(@data)
    assert_equal @library.get_id("Alicja w krainie czarow"), 1
  end

  def test_get_book
    @library = Library.new(@data)
    #sprawdzic tez czy - sprawdza liste ksiazek - lista pomniejszona o moja ksiazke
    assert_equal @library.list,  ["Alicja w krainie czarow", "Chlopcy z pracu broni", "Pan Tadeusz"]
    assert_equal @library.get_book(1), "Alicja w krainie czarow"
    assert_equal @library.list, ["Chlopcy z pracu broni", "Pan Tadeusz"]
  end

  def test_return_book
    @library = Library.new(@data)
    assert_equal @library.get_book(1), "Alicja w krainie czarow"
    assert_equal @library.list, ["Chlopcy z pracu broni", "Pan Tadeusz"]
    assert_equal @library.return_book(1), "Alicja w krainie czarow"
    assert_equal @library.list, ["Alicja w krainie czarow", "Chlopcy z pracu broni", "Pan Tadeusz"]
  end
end
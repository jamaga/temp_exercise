class Library
  attr_accessor :checked_out_books

  def initialize(library_db)
    @library_db = library_db
    @checkout_books = []
  end

  def list
    @library_db.sort_by { |book| book[:id] }.map { |book| book[:title] }
  end

  def get_id(title)
    @library_db.detect { |book| book[:title] == title }[:id]
  end

  def get_book(id)
    found_book = @library_db.detect { |book| book[:id] == id }
    @checkout_books << found_book
    @library_db.delete_if { |book| book[:id] == id }
    found_book[:title]
  end

  def return_book(id)
    return_book = @checkout_books.detect { |book| book[:id] == id }
    @library_db << return_book
    @checkout_books.delete_if { |book| book[:id] == id }
    return_book[:title]
  end
end
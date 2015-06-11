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
    @library_db.reject { |one_book| one_book[:id] == id}
  end

  # def return_book(id)
  #   @library_db <<
  # end

end
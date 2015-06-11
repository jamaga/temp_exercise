class Library

  def initialize(library_db)
    @library_db = library_db
  end

  def list
    @library_db.map { |book| book[:title] }
  end

  def get_id(title)
    @library_db.detect { |book| book[:title] == title }[:id]
  end

  def return_book(id)

  end

end
class School

  def initialize
    @school_db = Hash.new{|r, grade| r[grade] = []}
  end

  def add(name, grade)
    @school_db[grade] << name
  end

  def grade(search)
    @school_db[search].sort
  end

  def to_hash
    results = @school_db.map { |grade, name| [grade, name.sort] }.sort
    Hash[results]
  end
end
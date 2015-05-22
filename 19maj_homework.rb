class Names

  attr_reader :name, :surname

  def initialize(name, surname)
    @name = name
    @surname = surname

  end

  def person_name
    @name
  end

  def person_surname
    @surname
  end

  def full_name
    "#{@name} #{@surname}"
  end

end
class Names

  attr_reader :name, :surname

  def initialize(file)
    @db_people = YAML.load_file(file)
    @db_people.each do |sth, fixture|
      @name = Names.new(fixture['name'])
      @surname = Names.new(fixture['surname'])
    end
    @name
    @surname
  end

  def person_name
    @name
  end

  def peron_surname
    @surname
  end

  def full_name
    "#{@name} #{@surname}"
  end

end
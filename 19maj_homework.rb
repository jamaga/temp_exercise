require 'faker'

class Names

  attr_reader :name, :surname

  def initialize
    @name = Faker::Name.name
    @surname = Faker::Name.surname
  end

  def full_name
    "#{@name} #{@surname}"
  end

end
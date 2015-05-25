class Base

  attr_accessor :added_name, :added_email

  def initialize
    @baza = []
  end

  def add(hash)
    @baza.push({ 'name' => hash['name'], 'email' => hash['email']})
  end

  # def get_email(name)
  #   @baza.each do |h|
  #     h.map { |key, value| key['name']}
  #     h['email']
  #   end
  # end

  def get_email(name)
    @baza.map { |one_h|
      return one_h[name]
    }
  end

  # def delete(name)
  #   @baza.each do |h|
  #     h.delete_if { |key, value| key == name }
  #   end
  #
  # end

  # def get_all
  #   @baza
  # end

  # def purge
  #   @baza = []
  # end

end


o = Base.new
#p o
o.add({ 'name' => 'Piotr', 'email' => 'example@main.com' })
#p o
o.get_email('Piotr') # => example#@main.com
p o.get_email('Piotr')
# o.add({'name' => 'Ala', 'email' => 'ala@main.com'})
# # o.get_email('Ala') # => ala@main.com
# # o.delete('Piotr')
# p o
# o.get_email('Piotr') # => nil
# o.get_all # => [  {name: ‘Ala’, email: ‘ala@main.com ’} ]
# o.purge
# o.get_all # => []



# napisanie klasy ktora przyjmuje adres email i imie
#
# symulacja bazy danych - wywolujemy nowa instancje klasy base
# mozemy dodawac hash do bazy - name i email
# jak wywolamy get_email  - zwraca email
# jak nie ma maila - zwraca email
# mozna kasowac dane
# get_all - cala baza
# mozna wyczyscic cala tablice - purge
# najpierw testy!
#
# o = new Base
# o.add {name: ‘Piotr’, email: ‘example@main.com ’}
# o.get_email(‘Piotr’) # => example@main.com
# o.add {name: ‘Ala’, email: ‘ala@main.com ’}
# o.get_email(‘Ala’) # => ala@main.com
# o.delete(‘Piotr’)
# o.get_email(‘Piotr’) # => nil
# o.get_all # => [  {name: ‘Ala’, email: ‘ala@main.com ’} ]
# o.purge
# o.get_all # => []
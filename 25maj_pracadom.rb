class Base

  attr_reader :baza

  def initialize
    @baza = []
  end

  def add(hash)
    @baza.push({ 'name' => hash['name'], 'email' => hash['email']})
  end

  def get_email(name)
    tylko_email = nil
    @baza.each do |one_h|
     if  one_h['name'] == name
       tylko_email = one_h['email']
     end
    end
    tylko_email
  end

  def delete(name)
    @baza.delete_if { |h| h['name'] == name }
  end

  def get_all
    @baza
  end

  def purge
    @baza = []
  end

end


o = Base.new
p o
o.add({ 'name' => 'Piotr', 'email' => 'example@main.com' })
p o
p o.get_email('Piotr') # => example#@main.com
p o.add({'name' => 'Ala', 'email' => 'ala@main.com'})
p o.get_email('Ala') # => ala@main.com
o.delete('Piotr')
p o
p o.get_email('Piotr') # => nil
p o.get_all # => [  {name: ‘Ala’, email: ‘ala@main.com ’} ]
o.purge
p o.get_all # => []



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
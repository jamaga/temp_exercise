
#
#
# User.find(2) #=> { id: 2, name: 'Aga', is_admin: false }


class User
  def initialize(u)
   @user = u
  end

  def admin?
    @user[:is_admin] == true
  end

  def self.get_data_source
    [
        { id: 1, name: 'Ania', is_admin: false },
        { id: 5, name: 'Misek', is_admin: false },
        { id: 2, name: 'Aga', is_admin: false },
        { id: 6, name: 'Piotrek', is_admin: false },
    ]
  end

  def self.find(search_id)
    oop = self.get_data_source.select do |one_hash|
      search_id == one_hash[:id]
    end.first
    new(oop)
  end

end

# class Hash
#   def admin?
#     self[:is_admin] == true
#   end
# end


p User.find(5).admin?
# jak jest Klasa i kropka to zawsze jest SELF
#initialize - konstruktor - wywolywuje sie tylko jak tworzymy User.new - w tym wypadku initialize jest Bledne

#tam gdzie nie dzialamy na instancji - mamy self  - np User.find(5)  - self
#jak nie dzialamy na instancji - User.new.find(5)  - find jest BEZ selfa

# PRACA domowwa - napisac Funkcje ADMIN

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :avatar, :remove_avatar, :avatar_file_name, :avatar_updated_at, :promo_code, :discount
  attr_accessor :remove_avatar
  has_many :posts

  #callbacki modelow - sa after_save, before_validation, after_validation
  #before save - wywoluje metode delete_avatar przed zapisem do bazy uzytkownika
  #wywoluje metode - delete_avatar - mam metode ktora mamy wywolac
  #w ifie  mamy warunek
  #metoda sie wywoluje jak mamy spelniony warunek

  before_create :apply_discount
  before_save :delete_avatar, if: ->{ remove_avatar == '1' && !avatar_updated_at_changed? }

  def discount_percent
    if self.discount.nil?
      '0%'
    else
      "#{self.discount}%"
    end
  end

  private
  #mamy attr_accessor - remove avatar  - jesli si e rowna 1 w parametrze - w tescie

    def delete_avatar
      self.avatar = nil
    end

    def apply_discount
      self.discount = 0
      if promo_code
        znaleziony_promocode = PromoCode.find_by_code(promo_code)
        unless znaleziony_promocode.nil?
          self.discount = znaleziony_promocode.discount
        end
      end
    end
end

#find_by_code  - szuka w bazie po kolumnie code
# promo_code - zmienna z formularza
# PromoCode - moj model z dostepem do bazy dancyh

#1. sprawdzic czy podalismy w formularzu promo code - czy cos w pole spisaluimy
# jesli tak - to 2. sprawdzic w bazie danych czy posiada discount - jesli nie bedzie nilem
# 3. przypisujemy znizke - przypisujemy do pola uzytkownika ta znizke
# 4. w przeciwnych wypadkach - przypisujemy do discounta zero

#jesli cos robimy w Callbackach albo w modelu - robimy z SELFEM!!!!!!
# jak zapisujemy - musi byc z selfem
# jak zczytujemy - nie musi byc z selfem!!!

# jak chcemy NADPISAC

#User.new({ promo_code: ‘AAA’ })

# def apply_discount
#   puts promo_code        # => ‘AAA’
#   self.promo_code = ‘BBB’
#   puts promo_code        # => ‘AAA’
#   puts self.promo_code  # => ‘BBB’
# end
#
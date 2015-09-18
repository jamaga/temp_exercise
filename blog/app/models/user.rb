class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :avatar, :remove_avatar, :avatar_file_name, :avatar_updated_at
  attr_accessor :remove_avatar
  has_many :posts

  #callbacki modelow - sa after_save, before_validation, after_validation
  #before save - wywoluje metode delete_avatar przed zapisem do bazy uzytkownika
  #wywoluje metode - delete_avatar - mam metode ktora mamy wywolac
  #w ifie  mamy warunek
  #metoda sie wywoluje jak mamy spelniony warunek

  before_save :delete_avatar, if: ->{ remove_avatar == '1' && !avatar_updated_at_changed? }

  private
  #mamy attr_accessor - remove avatar  - jesli si e rowna 1 w parametrze - w tescie

    def delete_avatar
      self.avatar = nil
    end
end

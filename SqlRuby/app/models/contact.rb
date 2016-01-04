class Contact < ActiveRecord::Base
  has_one :contact_detail
  has_many :contact_infos
  validates :name, presence: true
  validates :email, presence: true
  validates :description, presence: true, allow_nil: true
end

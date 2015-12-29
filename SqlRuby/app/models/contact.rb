class Contact < ActiveRecord::Base
  has_one :contact_detail
  validates :name, presence: true
  validates :email, presence: true
  validates :description, presence: true, allow_nil: true
end

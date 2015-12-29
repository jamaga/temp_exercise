class ContactDetail < ActiveRecord::Base
  belongs_to :contact
  validates :name, presence: true
  validates :surname, presence: true
  validates :address, presence: true, allow_nil: true
end

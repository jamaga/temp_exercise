class ContactInfo < ActiveRecord::Base
  belongs_to :contact
  validates :gender, presence: true, inclusion: { in: ['male', 'female'] }
  validates :phone, presence: false
  validates :height, presence: false
  validates :is_active, presence: false, inclusion: { in: [true, false] }
end

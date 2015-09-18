class Alert < ActiveRecord::Base
  attr_accessible :alert_count, :alert_date, :post_id

  validates_presence_of :alert_count, :post_id

  belongs_to :post
end

class Contact < ActiveRecord::Base
  attr_accessible :body, :email, :subject

  validates_presence_of :body, :email, :subject
end

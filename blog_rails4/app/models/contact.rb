class Contact < ActiveRecord::Base
  validates_presence_of :body, :author, :subject
end

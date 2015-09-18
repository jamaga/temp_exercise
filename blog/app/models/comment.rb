class Comment < ActiveRecord::Base
  #w tabeli comments bedzie kolumna posts id
  belongs_to :post
  attr_accessible :body, :author
  validates_presence_of :body, :author
  #dodalam validacje presence of
  #mozemy ale NIE musimy podac te 2 parametry
end

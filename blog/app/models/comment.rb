class Comment < ActiveRecord::Base
  #w tabeli comments bedzie kolumna posts id
  belongs_to :post
  attr_accessible :body
end

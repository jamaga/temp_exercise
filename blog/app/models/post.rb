class Post < ActiveRecord::Base
  attr_accessible :body, :title, :updated_at, :visits_count

  validates_presence_of :body, :title

  #to nam odwzorowuje tabele komentarzy
  #jak by byl 1 - has_one :comment
  has_many :comments
  belongs_to :user

  def full_title
    "#{title} [#{updated_at.strftime('%m/%d/%Y')}]"
  end
end

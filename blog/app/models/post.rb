class Post < ActiveRecord::Base
  attr_accessible :body, :title, :updated_at, :visits_count, :avatar, :remove_avatar, :avatar_file_name
  attr_accessor :remove_avatar

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates_presence_of :body, :title
  #chcemy zeby body mialo minimum 5 znakow:
  validates_length_of :body, :minimum => 5
  validates :title, :length => {:minimum => 3}
  validate :must_be_first_letter, :on => :create

  #to nam odwzorowuje tabele komentarzy
  #jak by byl 1 - has_one :comment
  has_many :comments
  has_many :alerts
  belongs_to :user

  scope :latest_published, order("created_at DESC").limit(5)

  before_save :delete_avatar, if: ->{ remove_avatar == '1' && !avatar_updated_at_changed? }
  before_validation :zamiana_litery

  def full_title
    "#{title} [#{updated_at.strftime('%m/%d/%Y')}]"
  end

  def self.ordered(type)
    order("updated_at #{type}")
  end

  def must_be_first_letter
    if self.title.present?
      errors.add(:title, "must have first LETTER") unless self.title.match(/^[a-zA-Z]/)
    end
  end

  private

    def delete_avatar
      self.avatar = nil
    end

    def zamiana_litery
      self.title[0] = self.title[0].upcase
    end
end

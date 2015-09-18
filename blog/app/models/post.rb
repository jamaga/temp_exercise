class Post < ActiveRecord::Base
  attr_accessible :body, :title, :updated_at, :visits_count, :avatar, :remove_avatar, :avatar_file_name
  attr_accessor :remove_avatar

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validates_presence_of :body, :title

  #to nam odwzorowuje tabele komentarzy
  #jak by byl 1 - has_one :comment
  has_many :comments
  has_many :alerts
  belongs_to :user

  before_save :delete_avatar, if: ->{ remove_avatar == '1' && !avatar_updated_at_changed? }

  def full_title
    "#{title} [#{updated_at.strftime('%m/%d/%Y')}]"
  end

  private

    def delete_avatar
      self.avatar = nil
    end
end

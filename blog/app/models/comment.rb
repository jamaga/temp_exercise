class Comment < ActiveRecord::Base
  #w tabeli comments bedzie kolumna posts id
  belongs_to :post
  attr_accessible :body, :author
  validates_presence_of :body, :author
  after_save :create do
    mail = Mail.new do
      from     'myblog@domain.com'
      to          self.post.user.email
      subject  'nowy komentarz na blogu'
      body     'nowy komentarz na blogu'
    end

    mail.delivery_method :sendmail
    mail.deliver

  end

  #dodalam validacje presence of
  #mozemy ale NIE musimy podac te 2 parametry
end

require 'faker'

class Dublers

  attr_reader :first_name, :last_name, :credit_card_no, :group, :website

  def initialize(website = nil)
    #zasymulowanie 1 wpisu z etc/passwd:(ln 9)
    @group = ["andy", "*", "100", "100"]
    @last_name = Faker::Name.last_name
    @first_name = Faker::Name.first_name
    @credit_card_no = Faker::Business.credit_card_number
    #za kazdym razem ine name last name i card number
    @website = website
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end



end
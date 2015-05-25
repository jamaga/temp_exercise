class EmailValidator

  def is_valid(email)
    if /^[a-zA-Z0-9\.\-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$/.match(email)
      true
    else
      false
    end
  end

end

f = EmailValidator.new
p f.is_valid('ppp@domain.com') # => true
p f.is_valid('pppdomain.com') # => false

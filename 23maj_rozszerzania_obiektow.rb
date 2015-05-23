#dopisac do obiektu string metode humanize

# class String
#
#
#   def humanize
#     self.split(' ').map { |word| word.downcase.capitalize }.join(' ')
#   end
#
# end
#
# p 'MarIan koWAlsjki'.humanize


#zeby upcase robila to co humanize:

class String
  alias :humanize :upcase    #upcase aliasujemy na humanize bo upcase jest w str=igu

  # def humanize
  #   self.split(' ').map { |word| word.downcase.capitalize }.join(' ')
  # end

end

p 'MarIan koWAlsjki'.upcase
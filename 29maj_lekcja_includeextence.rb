module A

  def a
    "a"
  end

end

class B
  include A
end

class C
  extend A
end

# class D
#
#   def self.test1
#     puts 'test1'
#   end
#
# end

# d = D.new
# d.test1
# p D.test1
#od lin 17 do27    - o klasie D
# duza litera z kropka - metody STATYCZNE, z selfem sa sttyczne, nie potrzenuja nowej instancji kasy
# nie mozemy wyywp;ywac statyczne metody ktora nie ma selfa
# self - sa statyczne - wywoluje sie przez nazwa klasy i kroplka

# b = B.new
# p '1st'
# p b.a
# p '2nd'
# p B.a

c = C.new
p '3rd'
#p c.a
p '4th'
p C.a

# extend modulu w klasie - powoduje ze dolacza on metody z modulu
# do klasy i sa one dostepne w sposob statyczny - tak jak self (nazwa_klasy.nazwa_metody)

# include - powoduje ze dolacza metody modulu do klasy
# w taki sposob ze sa dostepne jako metody klasy (czyli niestatycznie)
#  przyklad: stawiamy instancje nowa a potem metode wywolujemy
# b = B.new
# p b.a


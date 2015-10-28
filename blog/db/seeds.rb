# encoding: utf-8

puts 'SETTING UP DEFAULT PROMO CODES'
PromoCode.delete_all
PromoCode.create! code: 'HG7P8C', discount: 30
PromoCode.create! code: 'A8C65D', discount: 15
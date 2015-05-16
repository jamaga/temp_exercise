class Shop

  def initialize(file)
    @shop_hash = {}
    @shop_db = File.read(file).split('|').map { |row| row.split(';').map { |col| col.gsub('"', '').gsub('\"', '').split(':')}.to_h }
    p @shop_db.inspect
    @shop_db.each do |obj|
      @shop_hash[obj['Name']] = obj['Price']
    end
    #p @shop_hash.inspect
  end

  def find_price(fruit_name)
    @shop_hash[fruit_name]
  end

  def show_all
    @shop_hash
  end

end


# shop = File.read('shop_13maj.txt').split('|').map { |ln| ln.split(';')}.each do |one_arr|
#   one_arr
#   #p one_arr
#   shop_h = Hash[*one_arr.flatten(1)]
#   p shop_h
# end
#
# shop2 = File.read('shop_13maj.txt').split('|').map { |ln| ln.split(';')}
# p shop2
# shop2_h = Hash[*shop2.flatten(1)]
# p shop2_h


class Bar
  def initialize
    @data = [ ]
  end

  def create(item)
    item[:name] = item[:name].upcase
    @data << item
  end

  def find(id)
    @data.detect { |f| f[:id] == id }[:name]
  end
end


#--------------------------------------------

elems = [
    { id: 1, name: 'Alice' },
    { id: 2, name: 'Agnes' },
    { id: 3, name: 'Peter' },
    { id: 5, name: 'Mike' }
]

bar = Bar.new
elems.each do |hash|
  bar.create hash
end
puts bar.find(5)
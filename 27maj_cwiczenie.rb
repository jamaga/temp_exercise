class Foo
  def initialize
    @data = []
  end

  def create(item)
    @data << item
  end

  def find(id)
    @data.detect { |f| f[:id] == id }[:name]
  end
end


#--------------------------------------------

data = [
    { id: 1, name: 'Alice' },
    { id: 2, name: 'Agnes' },
    { id: 3, name: 'Peter' },
    { id: 5, name: 'Mike' }
]

foo = Foo.new
data.each do |hash|
    foo.create hash
end

puts foo.find(5)
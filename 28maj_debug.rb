module App
  class Item
    def initialize(element)
      @item = element
    end

    def name
      @item[:name]
    end

    def email
      @item[:email]
    end

    def id
      @item[:id]
    end
  end

  class List < App::Item
    def initialize
      @data = []
    end

    def add(item)
      @data << App::Item.new(item)
      #p @data
    end

    def get_email(name)
      p @data
      @data.detect { |item| item.name == name }.email
    end

    def get_id(name)
      @data.detect { |item| item.name == name }.id
    end
  end
end

list = App::List.new
list.add({ id: 1, name: "Alice", email: "alice@domain.com" })
list.add({ id: 2, name: "Agnes", email: "agnes@domain.com" })
list.add({ id: 3, name: "Peter", email: "peter@domain.com" })
list.add({ id: 4, name:  "Mike", email: "mike@domain.com" })

puts list.get_email('Agnes')  # => 'agnes@domain.com'
puts list.get_id('Peter')     # => 3

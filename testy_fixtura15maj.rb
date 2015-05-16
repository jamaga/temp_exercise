class Foo
  def initialize(t)
    @data = t
  end

  def get_name(id)
    @data.each do |user|
      if user["id"] == id
        @record = user["name"]
      end
    end
    @record
  end
end
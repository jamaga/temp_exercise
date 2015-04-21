class Rack

  def initialize
    @randomized = []
  end

    def add(number)
      @randomized << number
    end

    def balls
      @randomized.sort
    end

end


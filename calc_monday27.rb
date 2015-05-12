class Calculator
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x.to_f
    @y = y.to_f
  end

  def add
    @x + @y
  end

  def sub
    @x - @y
  end

  def multiply
    @x * @y
  end

  def div
    raise Exception if @y == 0
    @x / @y
  end

end
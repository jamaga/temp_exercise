require 'minitest/autorun'
require './temperatury'

class TemperaturyTest < Minitest::Test

  def test_kelvin_fail
    t = Temperatura.new
    assert_not_equal -272.15, t.in_k
  end

  def test_kelvin_success
    t = Temperatura.new
    assert_equal 0, t.in_k
  end

  def test_celc_fail
    t = Temperatura.new
    assert_not_equal 0, t.in_c
  end

  def test_celc_success
    t = Temperatura.new
    assert_equal -272.15, t.in_c
  end

  def test_far_fail
    t = Temperatura.new
    assert_not_equal 0, t.in_f
  end

  def test_far_success
    t = Temperatura.new
    assert_equal -457.87, t.in_f
  end

  30 cels to farenheit xcxxcxc
  czy si eprzlicza dobrze we wszystkich systemach

end


=begin
t1 = Temperatura.new(100, :c)
t1.in_c  #=> 100
t1.in_k  #=> 373.15
t1.in_f  #=> 212

t2 = Temperatura.new
t2.in_c  #=> -272.15
t2.in_k  #=> 0
t2.in_f  #=> -457.87=end

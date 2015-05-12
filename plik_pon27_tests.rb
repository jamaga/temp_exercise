require 'test/unit'
require './plik_pon27'

class FileMonday27Test < Test::Unit::TestCase

  def setup
    @file = File.read('pon27.txt')
    #puts (@file.split('|').map { |elem| elem.split(';') }).flatten.inspect
=begin
    puts (@file.split('|').map { |elem| elem.split(';') }).each do |column|
      p column[0]
      p column[1]
=end
    array_of_arrays =  @file.split('|').map { |elem| elem.split(';') }
    array_of_arrays.each do |pair|
      pair
      single_pair = pair
      p single_pair
      arg1 = pair[0].gsub(/[^0-9]/, '')
      arg2 = pair[1].gsub(/[^0-9]/, '')
      p arg1
      p arg2
    end

  end

  def test_multiply_column
  #poprawne mnozenie czy sa 2 parametry

  end


end





=begin
2. Napisać program, który wczyta plik:
                                     1;5|2;10|3;2|5;6

Program ma posiadac funkcje, ktora:
                               a.) zwróci wynik z mnożenia podanej kolumny
b.) zwróci tablice z wynikami mnożenia poszczególnych kolumn jeśli nie podamy numeru kolumny

main = Main.new('./file.csv')
puts main.calculate(2) # => 6
puts main.calculate # => [5, 20, 6, 30]
=end

=begin
punkt a zwroci - 1 x 5 JESLI podam 0
punkt b zwroci - [5, 20, 6, 30]
=end

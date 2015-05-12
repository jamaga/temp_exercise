=begin
class A
  def a
    'aaa'
  end

  protected
    def b
      'bbb'
    end

  private
    def c
      'ccc'
    end

end

class B < A
  def d
    self.b
  end
end

obj = B.new
puts obj.d
=end

puts 'abc'.upcase
#upcase to funkcja wbudowana w string w Ruby

class String

  def ghf
    self.upcase
  end
end

puts 'abc'.ghf
#rozszerzylismy obiekt stringa o metode ghf !

p [4,5].empty?
p [].empty?

class String
  alias :dlugosc :length

end

puts 'xyz'.dlugosc


class A
  def self.foo
    "<div>#{yield}</div>"
  end
end

puts A.foo { "Hello "}

# wyszlo:
#     ➜  katas_and_exercises git:(master) ✗ ruby 27czerwiec_decorator.rb
# <div>Hello </div>

# dekorujemy sobie cos o Diva
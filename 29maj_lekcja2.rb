def division1(a,b)
  a/b
  rescue
    print 'moj wyjatek'  # przechwytywanie wyjatkow
end


def division2(a,b)
  begin
    a/b
  rescue
    print 'moj blad 2'
  ensure
    print 'ide dalej'
  end
end

# mozna tworzyc rozne typy wyjatkow i uzywac kilka razy
#niektore rzeczy moga miec zerodiv error inny - cos innego itp
# rescue - mozna uzywac tam gdzie jest ryzyko wystanie bledy
# jak np uzytkownik chce podzielic przez zero - a nie mozna - powinnismy przewidziec
# i zrobic rescue

# for i in 0..5 do
#   begin
#     puts 1/i
#   rescue ZeroDivisionError => w
#     puts "Wyjątek: " + w.to_s
#   rescue ZeroDivisionError => w
#     puts "Wyjątek: " + w.to_s
#   end
# end

#ensure spawia ze czy jest wyjatek czy nie to sie odpali

# puts division1(1,1)
# puts division1(1,0)
#
# puts division2(1,1)
# puts division2(1,0)

class MyCustomError < StandardError
  attr_reader :object

  def initialize(object)
    @object = object
  end

end

begin
  raise MyCustomError.new("an object"), "a message"
rescue
  print 'REsCUE'
end

begin
  raise MyCustomError.new("an object"), "a message"
rescue MyCustomError => e
  puts e.message # => "a message"
  puts e.object # => "an object"
end

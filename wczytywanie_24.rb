class MyFile

  def initialize
    my_hash = []
    File.open('main.txt').each do |line|
      my_hash.push line.split(" ")
    end
    p my_hash.to_h
  end

end

MyFile.new

napisac klase ktora pryjmuje w konstrukt 2 paramety
1wszy i 2gi opcjonalny
jesie ani 1 ani 2gi - domysknie wartosc 0
i naoisac funkcjektora poteguje pwszy przez drugi
testy

sort hash array


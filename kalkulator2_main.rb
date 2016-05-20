require './kalkulator2.rb'

k = KalkulatorDwa.new
File.readlines('kalkulator2.txt').each do |line|
  p k.wykonaj_dzialanie(line.chomp)
end

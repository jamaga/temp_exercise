@database = []
source = File.read('pon27.txt').split('|').map { |row| row.split(';')}
source.each do |pair|
  a = pair[0]
  b = pair[1]
  p a
  p b
end




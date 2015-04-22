File.open("anagramy.txt").each_with_index {|line, index| puts "#{index + 1}.#{line} #{line.downcase.chars.sort.join} #{line.downcase.chars.sort.sort.join}"}


  def combine_anagrams(words)
    words = File.open('anagramy.txt').each { |line|  puts "#{line}"}
    output_array = Array.new(0)
    words.each do |w1|
      temp_array = []
      words.each do |w2|
        if (w2.downcase.split(//).sort == w1.downcase.split(//).sort)
          temp_array.push(w2)
        end
      end
      output_array.push(temp_array)
    end
    return output_array.uniq
  end

  words = File.open('anagramy.txt').each { |line|  puts "#{line}"}
  p combine_anagrams(words)

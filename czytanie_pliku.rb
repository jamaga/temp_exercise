#File.open("moj_plik.txt").each {|line| puts line.capitalize}
#File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index}. #{line.capitalize}"}
=begin

File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index + 1}. #{line.capitalize}"}

File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index + 1}. #{line.capitalize.gsub(/[a-zA-Z]/, "5").gsub(" ", "-")}"}

File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index + 1}. #{line.capitalize.gsub(/[a-zA-Z]/, "literka ").gsub(" ", "-")}"}
=end

File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index + 1}. #{line.capitalize.gsub(/[0-9]/, "cyferka ").gsub(" ", "-")}"}

#File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index + 1}. #{line.capitalize.gsub(/[0-9]/, "cyferka ").gsub(/[^A-Z0-9a-z]$/, "%")}"}
=begin

File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index + 1}. #{line.capitalize.gsub(/[a-z]/, "S")}"}

File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index + 1}. #{line.downcase.gsub(/[^a-z]/, "").chars.sort.join}"}

File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index + 1}. #{line.downcase.gsub(/[^a-z]/, "").chars.join}"}

File.open("moj_plik.txt").each_with_index {|line, index| puts "#{index + 1}. #{line.downcase.gsub(/[^a-z]/, "").chars}"}
=end

#kropka to dowolny znak w reg expressions



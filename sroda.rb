# (1..20).each do |num|
#   if num % 3 == 0
#     is_enabled = 1
#   else
#     is_enabled = 0
#   end
#   puts "INSERT INTO user_components (user_id, title, is_enabled) VALUES ((SELECT id FROM users WHERE username = 'user#{num}'), 'title_#{21 - num}', #{is_enabled});"  
# end

h = 1
d = 15

(2..101).each_with_index do |my_user_id, i|
  if i % 20 == 0
    h = 1
    d = d + 1
  end

  if h < 10
    hour = "0#{h}"
  else
    hour = h
  end

  puts "UPDATE users SET created_at = '2016-01-#{d} #{hour}:00:00' WHERE id = #{my_user_id};"
  h = h + 1 
end


#user_id dla kazdego ma byc inny - 20 roznych user_id
#SELECT id FROM users WHERE username = 'user1';
# is enabled - co trzeci wpis aktywny

# update - zeby wypelnic daty w kolumnie created_at w users - zeby daty sie roznily godzinami w 1 miesiacu
#data:
#2016-01-20 08:14:15


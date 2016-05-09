#co 3 wynik jpg , co 2 gif, pozostale - png

(1..50).each do |num|
  img_type = 'png'
  if num % 3 == 0
    img_type = 'jpg'
  elsif num % 2 == 0
    img_type = 'gif'
  end

  wyciagniety_user = "SELECT id FROM users WHERE username = 'user#{num}'"
  puts "INSERT INTO user_previews (user_id, image_name, image_type, image_size) VALUES ( (#{wyciagniety_user}), 'my_image #{num}', '#{img_type}', #{num * 1000} );"
end

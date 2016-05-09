(1..100).each do |n|
  
  if n % 3 == 0
    is_active = 1
  else 
    is_active = 0
  end

  #p "INSERT INTO users (username, email, password, is_active ) VALUES ('user#{n}', 'user#{n}@dom.com', MD5('user#{n}'), #{is_active});"

end


(1..100).each do |n|
  p "INSERT INTO user_details (user_id, first_name, last_name, phone) VALUES ((SELECT id FROM users WHERE username = 'user#{n}'), 'tom#{n}', 'xx#{n}', '333#{n}');"
end


#INSERT INTO user_details (user_id, first_name, last_name, phone) VALUES ((SELECT id FROM users WHERE username = 'user1'), 'tom', 'xx', '333');



# INSERT INTO users (username, email, password, is_active ) VALUES ('user1', 'user1@dom.com', MD5('user1'), 1);
# co 3 uzytkownik is_active na 0

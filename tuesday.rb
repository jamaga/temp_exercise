File.open('wyniki.sql', 'w+') do |file| 
  file.puts "START TRANSACTION;"
  (1..100).each do |num|
    file.puts %{
        CREATE TABLE user_components_#{num} (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk#{num}_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      }
  end

  (1..100).each do |num|
    file.puts "INSERT INTO user_components_#{num} (user_id, title, is_enabled) VALUES (2, 'title_#{101 - num}', 1);"
  end
  file.puts 'COMMIT;'
end  




# tekst user_components w pliku:
# File.open('wyniki.sql', 'w') do |file|  
#   (1..100).each do |num|
#     file.puts "user_components_#{num}"
#       end
# end  


#zamiasr user_componets_1 etc - zeby byla cala SKLka

#   CREATE TABLE user_components#{num} (
#   id INT(11) NOT NULL AUTO_INCREMENT,
#   user_id INT(11) UNSIGNED NOT NULL,
#   title VARCHAR(255) NULL,
#   is_enabled BOOL NOT NULL DEFAULT 1,
#   PRIMARY KEY(id), 
#   CONSTRAINT fk_users_components_id FOREIGN KEY (user_id)
#         REFERENCES users(id)
#         ON UPDATE CASCADE
#         ON DELETE CASCADE
# ) ENGINE=InnoDB;

# INSERT INTO user_components (user_id, title, is_enabled) VALUES ()

#caly wynik - zapisac do  pliku

# (1..100).each do |num|
#   p "user_components_#{num}"
# end
# Create a new file and write to it  
# File.open('test.rb', 'w') do |f2|  
#   # use "\n" for two lines of text  
#   f2.puts "Created by Satish\nThank God!"  
# end  
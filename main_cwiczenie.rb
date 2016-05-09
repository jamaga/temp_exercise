# wypustowac tekst
# p 'LALALALLALALALALALLA'

require 'date'
krotka = "INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES"

tablica_imion = ['tomek', 'olek', 'agata', 'aga', 'ola', 'ala', 'jola', 'jon', 'kot']

(0..50).each do |liczba|
  p "#{krotka}(1, '#{tablica_imion.sample}', 'xx#{liczba}', '#{Date.today - liczba}', #{3*liczba}, #{3*liczba*10});"
end 

INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'kot', 'xx0', '2016-05-05', 0, 0);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'kot', 'xx1', '2016-05-04', 3, 30);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'kot', 'xx2', '2016-05-03', 6, 60);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jola', 'xx3', '2016-05-02', 9, 90);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'ola', 'xx4', '2016-05-01', 12, 120);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'agata', 'xx5', '2016-04-30', 15, 150);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jon', 'xx6', '2016-04-29', 18, 180);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'olek', 'xx7', '2016-04-28', 21, 210);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'aga', 'xx8', '2016-04-27', 24, 240);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'aga', 'xx9', '2016-04-26', 27, 270);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'tomek', 'xx10', '2016-04-25', 30, 300);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'agata', 'xx11', '2016-04-24', 33, 330);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'olek', 'xx12', '2016-04-23', 36, 360);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'kot', 'xx13', '2016-04-22', 39, 390);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'ala', 'xx14', '2016-04-21', 42, 420);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'aga', 'xx15', '2016-04-20', 45, 450);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'ala', 'xx16', '2016-04-19', 48, 480);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'aga', 'xx17', '2016-04-18', 51, 510);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'aga', 'xx18', '2016-04-17', 54, 540);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jola', 'xx19', '2016-04-16', 57, 570);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'ola', 'xx20', '2016-04-15', 60, 600);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'aga', 'xx21', '2016-04-14', 63, 630);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'ala', 'xx22', '2016-04-13', 66, 660);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'agata', 'xx23', '2016-04-12', 69, 690);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jola', 'xx24', '2016-04-11', 72, 720);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jola', 'xx25', '2016-04-10', 75, 750);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'agata', 'xx26', '2016-04-09', 78, 780);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'agata', 'xx27', '2016-04-08', 81, 810);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'aga', 'xx28', '2016-04-07', 84, 840);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jon', 'xx29', '2016-04-06', 87, 870);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'agata', 'xx30', '2016-04-05', 90, 900);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'ola', 'xx31', '2016-04-04', 93, 930);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jon', 'xx32', '2016-04-03', 96, 960);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'olek', 'xx33', '2016-04-02', 99, 990);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jon', 'xx34', '2016-04-01', 102, 1020);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'olek', 'xx35', '2016-03-31', 105, 1050);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'kot', 'xx36', '2016-03-30', 108, 1080);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'tomek', 'xx37', '2016-03-29', 111, 1110);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'ola', 'xx38', '2016-03-28', 114, 1140);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'aga', 'xx39', '2016-03-27', 117, 1170);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jola', 'xx40', '2016-03-26', 120, 1200);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jola', 'xx41', '2016-03-25', 123, 1230);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'tomek', 'xx42', '2016-03-24', 126, 1260);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'aga', 'xx43', '2016-03-23', 129, 1290);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'tomek', 'xx44', '2016-03-22', 132, 1320);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'ala', 'xx45', '2016-03-21', 135, 1350);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'olek', 'xx46', '2016-03-20', 138, 1380);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'tomek', 'xx47', '2016-03-19', 141, 1410);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'kot', 'xx48', '2016-03-18', 144, 1440);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'kot', 'xx49', '2016-03-17', 147, 1470);
INSERT INTO `employees` (`employer_id`, `name`, `description`, `work_date`, `daily_typing_pages`, `amount`)VALUES(1, 'jola', 'xx50', '2016-03-16', 150, 1500);




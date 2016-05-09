START TRANSACTION;

        CREATE TABLE user_components_1 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk1_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_2 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk2_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_3 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk3_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_4 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk4_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_5 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk5_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_6 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk6_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_7 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk7_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_8 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk8_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_9 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk9_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_10 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk10_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_11 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk11_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_12 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk12_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_13 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk13_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_14 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk14_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_15 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk15_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_16 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk16_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_17 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk17_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_18 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk18_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_19 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk19_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_20 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk20_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_21 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk21_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_22 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk22_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_23 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk23_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_24 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk24_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_25 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk25_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_26 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk26_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_27 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk27_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_28 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk28_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_29 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk29_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_30 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk30_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_31 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk31_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_32 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk32_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_33 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk33_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_34 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk34_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_35 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk35_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_36 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk36_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_37 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk37_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_38 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk38_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_39 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk39_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_40 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk40_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_41 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk41_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_42 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk42_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_43 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk43_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_44 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk44_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_45 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk45_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_46 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk46_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_47 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk47_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_48 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk48_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_49 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk49_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_50 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk50_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_51 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk51_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_52 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk52_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_53 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk53_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_54 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk54_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_55 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk55_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_56 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk56_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_57 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk57_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_58 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk58_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_59 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk59_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_60 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk60_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_61 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk61_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_62 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk62_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_63 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk63_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_64 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk64_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_65 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk65_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_66 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk66_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_67 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk67_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_68 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk68_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_69 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk69_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_70 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk70_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_71 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk71_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_72 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk72_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_73 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk73_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_74 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk74_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_75 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk75_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_76 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk76_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_77 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk77_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_78 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk78_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_79 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk79_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_80 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk80_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_81 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk81_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_82 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk82_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_83 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk83_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_84 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk84_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_85 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk85_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_86 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk86_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_87 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk87_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_88 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk88_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_89 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk89_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_90 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk90_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_91 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk91_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_92 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk92_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_93 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk93_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_94 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk94_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_95 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk95_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_96 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk96_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_97 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk97_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_98 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk98_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_99 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk99_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      

        CREATE TABLE user_components_100 (
          id INT(11) NOT NULL AUTO_INCREMENT,
          user_id INT(11) UNSIGNED NOT NULL,
          title VARCHAR(255) NULL,
          is_enabled BOOL NOT NULL DEFAULT 1,
          PRIMARY KEY(id), 
          CONSTRAINT fk100_users_components_id FOREIGN KEY (user_id)
          REFERENCES users(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE
        ) ENGINE=InnoDB;
      
INSERT INTO user_components_1 (user_id, title, is_enabled) VALUES (2, 'title_100', 1);
INSERT INTO user_components_2 (user_id, title, is_enabled) VALUES (2, 'title_99', 1);
INSERT INTO user_components_3 (user_id, title, is_enabled) VALUES (2, 'title_98', 1);
INSERT INTO user_components_4 (user_id, title, is_enabled) VALUES (2, 'title_97', 1);
INSERT INTO user_components_5 (user_id, title, is_enabled) VALUES (2, 'title_96', 1);
INSERT INTO user_components_6 (user_id, title, is_enabled) VALUES (2, 'title_95', 1);
INSERT INTO user_components_7 (user_id, title, is_enabled) VALUES (2, 'title_94', 1);
INSERT INTO user_components_8 (user_id, title, is_enabled) VALUES (2, 'title_93', 1);
INSERT INTO user_components_9 (user_id, title, is_enabled) VALUES (2, 'title_92', 1);
INSERT INTO user_components_10 (user_id, title, is_enabled) VALUES (2, 'title_91', 1);
INSERT INTO user_components_11 (user_id, title, is_enabled) VALUES (2, 'title_90', 1);
INSERT INTO user_components_12 (user_id, title, is_enabled) VALUES (2, 'title_89', 1);
INSERT INTO user_components_13 (user_id, title, is_enabled) VALUES (2, 'title_88', 1);
INSERT INTO user_components_14 (user_id, title, is_enabled) VALUES (2, 'title_87', 1);
INSERT INTO user_components_15 (user_id, title, is_enabled) VALUES (2, 'title_86', 1);
INSERT INTO user_components_16 (user_id, title, is_enabled) VALUES (2, 'title_85', 1);
INSERT INTO user_components_17 (user_id, title, is_enabled) VALUES (2, 'title_84', 1);
INSERT INTO user_components_18 (user_id, title, is_enabled) VALUES (2, 'title_83', 1);
INSERT INTO user_components_19 (user_id, title, is_enabled) VALUES (2, 'title_82', 1);
INSERT INTO user_components_20 (user_id, title, is_enabled) VALUES (2, 'title_81', 1);
INSERT INTO user_components_21 (user_id, title, is_enabled) VALUES (2, 'title_80', 1);
INSERT INTO user_components_22 (user_id, title, is_enabled) VALUES (2, 'title_79', 1);
INSERT INTO user_components_23 (user_id, title, is_enabled) VALUES (2, 'title_78', 1);
INSERT INTO user_components_24 (user_id, title, is_enabled) VALUES (2, 'title_77', 1);
INSERT INTO user_components_25 (user_id, title, is_enabled) VALUES (2, 'title_76', 1);
INSERT INTO user_components_26 (user_id, title, is_enabled) VALUES (2, 'title_75', 1);
INSERT INTO user_components_27 (user_id, title, is_enabled) VALUES (2, 'title_74', 1);
INSERT INTO user_components_28 (user_id, title, is_enabled) VALUES (2, 'title_73', 1);
INSERT INTO user_components_29 (user_id, title, is_enabled) VALUES (2, 'title_72', 1);
INSERT INTO user_components_30 (user_id, title, is_enabled) VALUES (2, 'title_71', 1);
INSERT INTO user_components_31 (user_id, title, is_enabled) VALUES (2, 'title_70', 1);
INSERT INTO user_components_32 (user_id, title, is_enabled) VALUES (2, 'title_69', 1);
INSERT INTO user_components_33 (user_id, title, is_enabled) VALUES (2, 'title_68', 1);
INSERT INTO user_components_34 (user_id, title, is_enabled) VALUES (2, 'title_67', 1);
INSERT INTO user_components_35 (user_id, title, is_enabled) VALUES (2, 'title_66', 1);
INSERT INTO user_components_36 (user_id, title, is_enabled) VALUES (2, 'title_65', 1);
INSERT INTO user_components_37 (user_id, title, is_enabled) VALUES (2, 'title_64', 1);
INSERT INTO user_components_38 (user_id, title, is_enabled) VALUES (2, 'title_63', 1);
INSERT INTO user_components_39 (user_id, title, is_enabled) VALUES (2, 'title_62', 1);
INSERT INTO user_components_40 (user_id, title, is_enabled) VALUES (2, 'title_61', 1);
INSERT INTO user_components_41 (user_id, title, is_enabled) VALUES (2, 'title_60', 1);
INSERT INTO user_components_42 (user_id, title, is_enabled) VALUES (2, 'title_59', 1);
INSERT INTO user_components_43 (user_id, title, is_enabled) VALUES (2, 'title_58', 1);
INSERT INTO user_components_44 (user_id, title, is_enabled) VALUES (2, 'title_57', 1);
INSERT INTO user_components_45 (user_id, title, is_enabled) VALUES (2, 'title_56', 1);
INSERT INTO user_components_46 (user_id, title, is_enabled) VALUES (2, 'title_55', 1);
INSERT INTO user_components_47 (user_id, title, is_enabled) VALUES (2, 'title_54', 1);
INSERT INTO user_components_48 (user_id, title, is_enabled) VALUES (2, 'title_53', 1);
INSERT INTO user_components_49 (user_id, title, is_enabled) VALUES (2, 'title_52', 1);
INSERT INTO user_components_50 (user_id, title, is_enabled) VALUES (2, 'title_51', 1);
INSERT INTO user_components_51 (user_id, title, is_enabled) VALUES (2, 'title_50', 1);
INSERT INTO user_components_52 (user_id, title, is_enabled) VALUES (2, 'title_49', 1);
INSERT INTO user_components_53 (user_id, title, is_enabled) VALUES (2, 'title_48', 1);
INSERT INTO user_components_54 (user_id, title, is_enabled) VALUES (2, 'title_47', 1);
INSERT INTO user_components_55 (user_id, title, is_enabled) VALUES (2, 'title_46', 1);
INSERT INTO user_components_56 (user_id, title, is_enabled) VALUES (2, 'title_45', 1);
INSERT INTO user_components_57 (user_id, title, is_enabled) VALUES (2, 'title_44', 1);
INSERT INTO user_components_58 (user_id, title, is_enabled) VALUES (2, 'title_43', 1);
INSERT INTO user_components_59 (user_id, title, is_enabled) VALUES (2, 'title_42', 1);
INSERT INTO user_components_60 (user_id, title, is_enabled) VALUES (2, 'title_41', 1);
INSERT INTO user_components_61 (user_id, title, is_enabled) VALUES (2, 'title_40', 1);
INSERT INTO user_components_62 (user_id, title, is_enabled) VALUES (2, 'title_39', 1);
INSERT INTO user_components_63 (user_id, title, is_enabled) VALUES (2, 'title_38', 1);
INSERT INTO user_components_64 (user_id, title, is_enabled) VALUES (2, 'title_37', 1);
INSERT INTO user_components_65 (user_id, title, is_enabled) VALUES (2, 'title_36', 1);
INSERT INTO user_components_66 (user_id, title, is_enabled) VALUES (2, 'title_35', 1);
INSERT INTO user_components_67 (user_id, title, is_enabled) VALUES (2, 'title_34', 1);
INSERT INTO user_components_68 (user_id, title, is_enabled) VALUES (2, 'title_33', 1);
INSERT INTO user_components_69 (user_id, title, is_enabled) VALUES (2, 'title_32', 1);
INSERT INTO user_components_70 (user_id, title, is_enabled) VALUES (2, 'title_31', 1);
INSERT INTO user_components_71 (user_id, title, is_enabled) VALUES (2, 'title_30', 1);
INSERT INTO user_components_72 (user_id, title, is_enabled) VALUES (2, 'title_29', 1);
INSERT INTO user_components_73 (user_id, title, is_enabled) VALUES (2, 'title_28', 1);
INSERT INTO user_components_74 (user_id, title, is_enabled) VALUES (2, 'title_27', 1);
INSERT INTO user_components_75 (user_id, title, is_enabled) VALUES (2, 'title_26', 1);
INSERT INTO user_components_76 (user_id, title, is_enabled) VALUES (2, 'title_25', 1);
INSERT INTO user_components_77 (user_id, title, is_enabled) VALUES (2, 'title_24', 1);
INSERT INTO user_components_78 (user_id, title, is_enabled) VALUES (2, 'title_23', 1);
INSERT INTO user_components_79 (user_id, title, is_enabled) VALUES (2, 'title_22', 1);
INSERT INTO user_components_80 (user_id, title, is_enabled) VALUES (2, 'title_21', 1);
INSERT INTO user_components_81 (user_id, title, is_enabled) VALUES (2, 'title_20', 1);
INSERT INTO user_components_82 (user_id, title, is_enabled) VALUES (2, 'title_19', 1);
INSERT INTO user_components_83 (user_id, title, is_enabled) VALUES (2, 'title_18', 1);
INSERT INTO user_components_84 (user_id, title, is_enabled) VALUES (2, 'title_17', 1);
INSERT INTO user_components_85 (user_id, title, is_enabled) VALUES (2, 'title_16', 1);
INSERT INTO user_components_86 (user_id, title, is_enabled) VALUES (2, 'title_15', 1);
INSERT INTO user_components_87 (user_id, title, is_enabled) VALUES (2, 'title_14', 1);
INSERT INTO user_components_88 (user_id, title, is_enabled) VALUES (2, 'title_13', 1);
INSERT INTO user_components_89 (user_id, title, is_enabled) VALUES (2, 'title_12', 1);
INSERT INTO user_components_90 (user_id, title, is_enabled) VALUES (2, 'title_11', 1);
INSERT INTO user_components_91 (user_id, title, is_enabled) VALUES (2, 'title_10', 1);
INSERT INTO user_components_92 (user_id, title, is_enabled) VALUES (2, 'title_9', 1);
INSERT INTO user_components_93 (user_id, title, is_enabled) VALUES (2, 'title_8', 1);
INSERT INTO user_components_94 (user_id, title, is_enabled) VALUES (2, 'title_7', 1);
INSERT INTO user_components_95 (user_id, title, is_enabled) VALUES (2, 'title_6', 1);
INSERT INTO user_components_96 (user_id, title, is_enabled) VALUES (2, 'title_5', 1);
INSERT INTO user_components_97 (user_id, title, is_enabled) VALUES (2, 'title_4', 1);
INSERT INTO user_components_98 (user_id, title, is_enabled) VALUES (2, 'title_3', 1);
INSERT INTO user_components_99 (user_id, title, is_enabled) VALUES (2, 'title_2', 1);
INSERT INTO user_components_100 (user_id, title, is_enabled) VALUES (2, 'title_1', 1);
COMMIT;

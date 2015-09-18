# Create GAME table

# --- !Ups

CREATE TABLE `GAME` (`ID` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT, `USER_ONE` INT(11) UNSIGNED NOT NULL,
  `USER_TWO` INT(11) UNSIGNED NOT NULL, `CREATED_AT` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`) ,
  FOREIGN KEY (`USER_ONE`) REFERENCES `GAME_USER`(`ID`),
  FOREIGN KEY (`USER_TWO`) REFERENCES `GAME_USER`(`ID`)) ENGINE = InnoDB;

# --- !Downs

DROP TABLE `GAME`
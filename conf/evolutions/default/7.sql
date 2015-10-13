# Create ROUND table

# --- !Ups

CREATE TABLE `ROUND` (`ID` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
                      `GAME_ID` INT(11) UNSIGNED NOT NULL,
                      `CATEGORY_ID` BIGINT(20) NOT NULL,
                      `QUES_ONE` BIGINT(20) NOT NULL,
                      `QUES_TWO` BIGINT(20) NOT NULL,
                      `QUES_THREE` BIGINT(20) NOT NULL,
                      `UONE_ANSONE` BIGINT(20),
                      `UONE_ANSTWO` BIGINT(20),
                      `UONE_ANSTHREE` BIGINT(20),
                      `UTWO_ANSONE` BIGINT(20),
                      `UTWO_ANSTWO` BIGINT(20),
                      `UTWO_ANSTHREE` BIGINT(20),
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`GAME_ID`) REFERENCES `GAME`(`ID`),
  FOREIGN KEY (`CATEGORY_ID`) REFERENCES `CATEGORY`(`ID`),
  FOREIGN KEY (`QUES_ONE`) REFERENCES `QUESTION`(`ID`),
  FOREIGN KEY (`QUES_TWO`) REFERENCES `QUESTION`(`ID`),
  FOREIGN KEY (`QUES_THREE`) REFERENCES `QUESTION`(`ID`),
  FOREIGN KEY (`UONE_ANSONE`) REFERENCES `ANSWER`(`ID`),
  FOREIGN KEY (`UONE_ANSTWO`) REFERENCES `ANSWER`(`ID`),
  FOREIGN KEY (`UONE_ANSTHREE`) REFERENCES `ANSWER`(`ID`),
  FOREIGN KEY (`UTWO_ANSONE`) REFERENCES `ANSWER`(`ID`),
  FOREIGN KEY (`UTWO_ANSTWO`) REFERENCES `ANSWER`(`ID`),
  FOREIGN KEY (`UTWO_ANSTHREE`) REFERENCES `ANSWER`(`ID`)
) ENGINE = InnoDB;

# --- !Downs

# DROP TABLE `ROUND`
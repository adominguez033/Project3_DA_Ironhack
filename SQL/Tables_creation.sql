DROP DATABASE IF EXISTS project3;
CREATE DATABASE project3;
USE project3;



CREATE TABLE tesla_stock_price (
  date datetime NOT NULL,
  closing decimal NOT NULL,
  volume int NOT NULL,
  opening decimal NOT NULL,
  highest decimal NOT NULL,
  lowest decimal NOT NULL,
  daily_movement decimal NOT NULL,
  year int NOT NULL,
  month int NOT NULL,
  PRIMARY KEY (date)
  );



CREATE TABLE elon_musk_tweets (
  userscreenname varchar(30) NOT NULL,
  username varchar(20) NOT NULL,
  text varchar(500) NOT NULL,
  image_link varchar(500) NOT NULL,
  tweet_url varchar(500) NOT NULL,
  date datetime NOT NULL,
  retweets int NOT NULL,
  comments int NOT NULL,
  likes int NOT NULL,
  year int NOT NULL,
  month int NOT NULL
  );
  


CREATE TABLE tesla_news (
  date datetime NOT NULL,
  header VARCHAR(500) NOT NULL,
  body VARCHAR(1000) NOT NULL,
  year int NOT NULL,
  month int NOT NULL
  );


ALTER TABLE elon_musk_tweets ADD FOREIGN KEY (date) REFERENCES tesla_stock_price(date) ON DELETE RESTRICT;
ALTER TABLE tesla_news ADD FOREIGN KEY (date) REFERENCES tesla_stock_price(date) ON DELETE RESTRICT;




DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id           INT PRIMARY KEY AUTO_INCREMENT,
  first_name   NVARCHAR(255)       NOT NULL,
  last_name    NVARCHAR(255)       NOT NULL,
  email        VARCHAR(255) UNIQUE NOT NULL,
  password     CHAR(40)            NOT NULL,
  phone_number VARCHAR(16)
);

CREATE TABLE products (
  id          INT PRIMARY KEY AUTO_INCREMENT,
  name        NVARCHAR(255) NOT NULL,
  description NVARCHAR(2047),
  price       DOUBLE        NOT NULL,
  user_id     INT           NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE images (
  id         INT PRIMARY KEY AUTO_INCREMENT,
  url        VARCHAR(255) NOT NULL,
  product_id INT          NOT NULL,
  FOREIGN KEY (product_id) REFERENCES products (id)
);


INSERT INTO users (first_name, last_name, email, password, phone_number)
VALUES ('Arsen', 'Grigoryan', 'arsen-grigoryan@gmail.com', 'd66b3bac5c819c46c63f60fad08716950c97f5e3', '+37477864570');
INSERT INTO users (first_name, last_name, email, password, phone_number)
VALUES ('Vahe', 'Mkrtchyan', 'vcmkrtchyan@gmail.com', '56e09dc4b6aa5992be08a3a0d9cb4cae1e42b86e', '+37495914536');

INSERT INTO products (name, description, price, user_id)
VALUES ('LG K20 V 16GB, 2GB RAM, 4x1.4 GHz, 5.3" 720p, 13MP, մատնահետք, Android 7.0', 'Այլ հեռախոսների համար դիտեք իմ մյուս հայտարարությունները։
Բոլոր նկարները հենց վաճառվող հեռախոսինն են։ Գտնվում է իդեալական վիճակում։ Ունի մատնահետքի սենսոր։ Աշխատում է Android 7.0 Nougat համակարգով։ Նկարում է գերազանց նկարներ և վիդեո։',
        53000, 1);

INSERT INTO products (name, description, price, user_id) VALUES ('Apple iPhone 6s 64gb space gray. gold ev rose gold Nor erashxiq + Aparik 0%',
                                                                 'IPhone 6s space gray gold and rose gold Pak tup
16gb-155000 64gb-170000
Aparik vajarq 0% kanxavjar ACBA ECONOM. VTB
Araqum ANVJAR
Nver patyan ev dimapaki
Erashxiq!
ORIGINAL!', 170000, 2);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/331/25578331.webp', 1);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/332/25578332.webp', 1);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/334/25578334.webp', 1);

INSERT INTO images (url, product_id)
VALUES ('https://s.list.am/p/749/24427749.webp', 2);
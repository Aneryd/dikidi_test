DROP TABLE IF EXISTS motorcycles_type;
DROP TABLE IF EXISTS motorcycles;
CREATE TABLE motorcycles(
	id int PRIMARY KEY,
	name varchar(255),
  discontinued boolean default false
);

CREATE TABLE motorcycles_type(
		id int AUTO_INCREMENT PRIMARY KEY,
    motorcycles_id int,
    name varchar(255),
    FOREIGN KEY (motorcycles_id) REFERENCES motorcycles (id)
);

INSERT INTO motorcycles (id, name, discontinued) VALUES(1, "YAMAHA YBR125", false);
INSERT INTO motorcycles (id, name, discontinued) VALUES(2, "BAJAJ DOMINAR 400", true);
INSERT INTO motorcycles (id, name, discontinued) VALUES(3, "Honda CB400SS", false);
INSERT INTO motorcycles (id, name, discontinued) VALUES(4, "Suzuki GSX1300R Hayabusa", true);
INSERT INTO motorcycles (id, name, discontinued) VALUES(5, "Kawasaki Ninja H2 SX", true);
INSERT INTO motorcycles (id, name, discontinued) VALUES(6, "Honda Gold Wing", false);
INSERT INTO motorcycles (id, name, discontinued) VALUES(7, "Планета", false);
INSERT INTO motorcycles (id, name, discontinued) VALUES(8, "KTM Adventure 790", false);

INSERT INTO motorcycles_type (motorcycles_id, name) VALUES(1, "Спортбайк");
INSERT INTO motorcycles_type (motorcycles_id, name) VALUES(2, "Классический");
INSERT INTO motorcycles_type (motorcycles_id, name) VALUES(3, "Классический");
INSERT INTO motorcycles_type (motorcycles_id, name) VALUES(4, "Туристический");
INSERT INTO motorcycles_type (motorcycles_id, name) VALUES(5, "Туристический");
INSERT INTO motorcycles_type (motorcycles_id, name) VALUES(6, "Спортбайк");
INSERT INTO motorcycles_type (motorcycles_id, name) VALUES(7, "Туристический");
INSERT INTO motorcycles_type (motorcycles_id, name) VALUES(8, "Классический");

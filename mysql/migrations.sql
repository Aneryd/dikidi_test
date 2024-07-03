CREATE TABLE motorcycle_types(
		id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE motorcycles(
	id int AUTO_INCREMENT PRIMARY KEY,
	name varchar(255),
  discontinued boolean default false,
  motorcycle_type_id int,
  FOREIGN KEY (motorcycle_type_id) REFERENCES motorcycle_types (id)
);

INSERT INTO motorcycle_types (id, name) VALUES
(1, "Спортбайк"),
(2, "Классический"),
(3, "Туристический"),
(5, "Категория1"),
(6, "Категория2"),
(7, "Пустая_категория1"),
(8, "Пустая_категория2"),
(9, "Не_пустая_категория");

INSERT INTO motorcycles (id, name, discontinued, motorcycle_type_id) VALUES
(1, "YAMAHA YBR125", false, 1),
(2, "BAJAJ DOMINAR 400", true, 1),
(3, "Honda CB400SS", false, 2),
(4, "Suzuki GSX1300R Hayabusa", true, 2),
(5, "Kawasaki Ninja H2 SX", true, 2),
(6, "Honda Gold Wing", false, 3),
(7, "Планета", false, 3),
(8, "KTM Adventure 790", true, 3),
(9, "Moto1", false, 1),
(10, "Moto2", false, 5),
(11, "Moto3", false, 5),
(12, "Moto4", true, 6),
(13, "Moto5", true, 6),
(14, "Moto6", true, 6),
(15, "moto-moto-1", false, 9),
(16, "moto-moto-2", false, 9),
(17, "moto-moto-3", false, 9);

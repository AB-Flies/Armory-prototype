drop table if exists SkinCollections

Create table SkinCollections (
	nombre varchar(10) primary key,
	price int,
	upgrades int
);

insert into SkinCollections (nombre, price, upgrades) values 
('Celestial', 1775, 1)

insert into SkinCollections (nombre, price, upgrades) values 
('Elderflame', 2475, 2)

insert into SkinCollections (nombre, price, upgrades) values 
('Imperium', 2175, 2)

insert into SkinCollections (nombre, price, upgrades) values 
('Sakura', 1275, 0)

insert into SkinCollections (nombre, price, upgrades) values 
('Smite', 875, 0)
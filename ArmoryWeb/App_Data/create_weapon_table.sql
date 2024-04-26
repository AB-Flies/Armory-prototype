drop table if exists Weapons

CREATE TABLE Weapons (
    id int primary key identity(0, 1),
    weaponType varchar(15),
    skinCollection varchar(10),
    stock int null,
    constraint FK_Weapon_WeaponType foreign key (weaponType) references WeaponTypes(nombre),
    constraint FK_Weapon_SkinCollection foreign key (skinCollection) references SkinCollections(nombre)
);

insert into Weapons (skinCollection, weaponType, stock) values 
('Celestial', 'Ares', 1);

insert into Weapons (skinCollection, weaponType, stock) values 
('Celestial', 'Frenzy', 0);

insert into Weapons (skinCollection, weaponType, stock) values 
('Celestial', 'Judge', 4);

insert into Weapons (skinCollection, weaponType, stock) values 
('Celestial', 'Knife', 7);

insert into Weapons (skinCollection, weaponType, stock) values 
('Celestial', 'Phantom', 1);

insert into Weapons (skinCollection, weaponType, stock) values 
('Elderflame', 'Frenzy', 0);

insert into Weapons (skinCollection, weaponType, stock) values 
('Elderflame', 'Judge', 0);

insert into Weapons (skinCollection, weaponType, stock) values 
('Elderflame', 'Knife', 0);

insert into Weapons (skinCollection, weaponType, stock) values 
('Elderflame', 'Operator', 0);

insert into Weapons (skinCollection, weaponType, stock) values 
('Elderflame', 'Vandal', 0);

insert into Weapons (skinCollection, weaponType, stock) values 
('Imperium', 'Judge', 6);

insert into Weapons (skinCollection, weaponType, stock) values 
('Imperium', 'Knife', 0);

insert into Weapons (skinCollection, weaponType, stock) values 
('Imperium', 'Operator', 8);

insert into Weapons (skinCollection, weaponType, stock) values 
('Imperium', 'Sheriff', 6);

insert into Weapons (skinCollection, weaponType, stock) values 
('Imperium', 'Vandal', 9);

insert into Weapons (skinCollection, weaponType, stock) values 
('Sakura', 'Ares', 7);

insert into Weapons (skinCollection, weaponType, stock) values 
('Sakura', 'Classic', 1);

insert into Weapons (skinCollection, weaponType, stock) values 
('Sakura', 'Sheriff', 8);

insert into Weapons (skinCollection, weaponType, stock) values 
('Sakura', 'Stinger', 0);

insert into Weapons (skinCollection, weaponType, stock) values 
('Sakura', 'Vandal', 0);

insert into Weapons (skinCollection, weaponType, stock) values 
('Smite', 'Classic', 5);

insert into Weapons (skinCollection, weaponType, stock) values 
('Smite', 'Judge', 9);

insert into Weapons (skinCollection, weaponType, stock) values 
('Smite', 'Knife', 1);

insert into Weapons (skinCollection, weaponType, stock) values 
('Smite', 'Odin', 4);

insert into Weapons (skinCollection, weaponType, stock) values 
('Smite', 'Phantom', 8);


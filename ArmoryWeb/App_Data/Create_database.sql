drop table if exists Weapons;
drop table if exists SkinCollections;
drop table if exists WeaponTypes;

CREATE TABLE WeaponTypes (
    nombre VARCHAR(15) primary key,
    descripcion TEXT
);


insert into WeaponTypes (nombre, descripcion) values
('Sheriff', 'The Sheriff is a semi-automatic revolver and the most expensive sidearm in the game. Able to kill enemies with a single bullet to the head at most ranges and health totals, it can be used to challenge even enemies who have full-bought. It''s high penetration and extra reserve magazine also makes it useful for spamming for wallbangs during pistol or eco rounds. With a low-capacity magazine and low fire rate however, even one missed shot can end up being punishing. The Sheriff''s high recoil and spread also promotes exceptional control and precision in order to use it when fighting multiple enemies.');

INSERT INTO WeaponTypes (nombre, descripcion) VALUES
('Judge', 'The Judge is a moderately-priced automatic shotgun. It is best used in situations that put the user in close range against multiple enemies, being able to wipe them out quickly should they risk not clearing such small areas beforehand. As with all shotguns, the Judge has pellet spread that can be reduced by crouching, though the spread still makes it effectively useless at long ranges no matter what. Unlike the other shotguns however, the Judge does not have a distance cap on its pellets and can hit enemies beyond 50 meters.\n\nAs a more expensive shotgun and expected upgrade to the Bucky, the Judge''s higher rate of fire makes it a better option for taking on multiple enemies at once. However, the Judge''s lower effective magazine capacity and lower damage makes the Bucky a more suitable choice in sustained firefights or for taking out individual targets.');

insert into WeaponTypes (nombre, descripcion) values
('Knife', 'The Tactical Knife is a base melee weapon provided to every player, and cannot be dropped. It has two modes of fire: one being a fast slashing motion, and the other being a sharp jab. The primary slash has a three swing combo that loops, while the alternate slash deals more damage in a single strike but with a longer recovery and slightly smaller range and hitbox. The weapon also deals double damage when striking the target''s back.\n\nScoring a kill with this weapon rewards the same number of creds as a regular kill. All kills with any weapon skin using Tactical Knife will use the standard kill banner.\n\nUnlike guns, which reduce a player''s movement speed whilst equipped, the player remains at the standard run speed of 6.75 m/s whilst they have this weapon equipped, meaning it is the fastest weapon to run with in standard gameplay.')

insert into WeaponTypes (nombre, descripcion) values
('Phantom', 'The Phantom is a high-cost automatic rifle. One of VALORANT''s best general-purpose weapons, it is most effective at short to medium range where it is able to spray down multiple enemies at once due to its high rate of fire. It also comes equipped with a silencer, allowing it to be used to spam through vision blockers without much risk to the player''s ammo count or positioning.\n\nThe Phantom is able to instantly kill an enemy with a single headshot, but its damage falloff means this no longer becomes the case at medium to long ranges. Players hitting the initial headshot but failing to hit a second killing shot before they die themselves may find the Vandal preferable in such situations.')

insert into WeaponTypes (nombre, descripcion) values
('Odin', 'The Odin is a high-cost machine gun. When using Primary Fire, the Odin''s fire rate will increase over the duration the weapon is fired to a maximum amount, but using Alternate Fire will allow the user to shoot at that maximum fire rate immediately.\n\nAs a machine gun, the Odin is most effective as either a defensive tool to hold a site or when used to get wallbang kills due to its high penetration, rate of fire, and magazine capacity. Their lower mobility and longer equip speeds however make them less suited for peeking or entering sites, something better served at such a price by rifles like the Phantom or Vandal.\n\nAs a more expensive machine gun compared to the Ares, the Odin is a direct upgrade, offering more damage, higher rates of fire, and higher initial accuracy, with the only benefit to the Ares being its unique reverse accuracy feature. However, these upgrades come at a heavy cost, with the Odin being the second-most expensive weapon in the game, more than any rifle.')

insert into WeaponTypes (nombre, descripcion) values
('Vandal', 'The Vandal is a high-cost automatic rifle. One of VALORANT''s best general-purpose weapons, it is most effective at picking off individual targets at longer ranges due to having no falloff, allowing it to kill any enemy with a single headshot at all ranges.\n\nCompared to VALORANT''s other general-purpose rifle, the Phantom, the Vandal is guaranteed to instantly kill an enemy with one bullet to the head whereas the Phantom''s damage falloff results in it requiring multiple bullets at medium to long range to get headshot kills. However, the Phantom''s higher fire rate and accuracy make it better at taking on multiple enemies at short to medium ranges over the Vandal.')

insert into WeaponTypes (nombre, descripcion) values
('Classic', 'The Classic is a pistol that all players receive upon spawning. It has two firing modes, a standard semi-automatic single-bullet primary fire and a semi-automatic shotgun alternate fire that fires three bullets instantly but only at around a third of its usual fire rate.\n\nDespite what may be suggested about its strength by the Classic being the gun given away for free, it is actually a versatile sidearm. Whilst the other sidearms are usually suited for a particular range, the Classic can be used in medium range engagements thanks to its large falloff range but can also quickly dispatch an enemy at close range using its shotgun mode. If a player isn''t expecting to take fights at one specific range, the Classic''s versatility can entice them into keeping it over upgrading to another sidearm, allowing them to use their creds on shields or abilities instead.')

insert into WeaponTypes (nombre, descripcion) values
('Stinger', 'The Stinger is a low-cost SMG. It has two firing modes, a standard automatic single-bullet primary fire and a semi-automatic burst-mode alternate fire that fires four bullets in a burst at around an eighth of its usual fire rate. Alternate fire also increases the distance that falloff damage begins to occur at.\n\nAs an SMG, the Stinger is most effective at shorter range or when used on the move. It''s high fire rate makes it great for taking out single targets when buying light and can be used to surprise an enemy in tight spaces, allowing the player to gain a weapon upgrade for little investment thanks to the Stinger''s cheap cost.\n\nCompared to the costlier Spectre SMG, the Stinger is not completely outshone as its power comes with its ability to kill individual agents quickly. However, the Stinger''s lower magazine capacity and higher fire rate make it unsuitable for sustained firefights against multiple enemies, given that a magazine will empty in just over a second. Its higher spread values also mean the Spectre can have more precision when looking to eliminate single targets at longer ranges, meaning the Stinger is more suited to fights in close-quarters. Also, despite ADS and burst often being associated with better precision at long range, the Stinger''s alternate fire is affected by recoil within the burst itself, meaning exceptional control is needed to ensure all of the burst''s bullets hit the target at longer ranges.')

insert into WeaponTypes (nombre, descripcion) values
('Ares', 'The Ares is a medium-cost machine gun. Unlike most other guns that gets less accurate as you continuously fire more bullets from them, the Ares is the only gun in the game that gets more accurate as it is continuously fired. As a machine gun, it is most effective as either a defensive tool to hold a site or when used to get wallbang kills due to its high penetration, rate of fire, and magazine capacity. Their lower mobility and longer equip speeds however make them less suited for peeking or entering sites, something better served by SMGs at the price of an Ares.\n\nIn comparison to the similarly-priced Spectre, the Ares is better at a distance due to its low damage falloff but cannot compete with a Spectre player who can hit their headshots at close range. The Ares is also less mobile and has much more initial spread.\n\nCompared to the costlier Odin, the Ares is not completely outshone thanks to its unique reverse accuracy feature. However, the Odin''s higher damage, fire rate, and initial accuracy far outweigh the benefits of the Ares, though a heavy price will need to be paid for the upgrade.')

insert into WeaponTypes (nombre, descripcion) values
('Frenzy', 'The Frenzy is a low-cost automatic pistol. As a sidearm equivalent of an SMG, it''s not too punishing to use on the move at short ranges, making it most effective at that range and the best sidearm to use in such scenarios, though to challenge enemies who have full-bought getting headshots will most likely be necessary.\n\nIts high rate of fire and small magazine size however means it will run out quickly and, unless controlled exceptionally well, isn''t great at taking out multiple enemies at once. This makes it especially risky to spray through vision blockers with if using it during a pistol or eco round as the player is much more likely to run out of ammo than most other weapons.')

insert into WeaponTypes (nombre, descripcion) values
('Operator', 'The Operator is a high-cost sniper rifle and the most expensive gun in the game. As a sniper, it has a scope with two zoom settings on its Alternate Fire mode that has perfect accuracy when standing still. The Operator''s Primary Fire accuracy on the other hand is extremely inaccurate.\n\nThe Operator''s power comes from its high-damage bullets, being able to instantly kill any enemy with a single shot to the body, though with its low rate of fire every missed shot comes with a cost. Compared to the Marshal and the Outlaw, both of which cannot kill fully shielded enemies with a single body shot, the Operator is also better at picking off enemies with a wallbang shot than the Marshal due to its higher penetration, though the Outlaw''s higher fire rate can make it a better choice instead for this if an additional shot is needed.')


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


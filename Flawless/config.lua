_C = {
	-- Your license
	--Key = '95a35105-b854-4e43-917d-34c35c3c0f4e',
	Key = 'SOMALIA',

	BanMessage = 'You have been disconnected for cheating.',
	DiscriminatorMessage = '🐌 %s is required to join the server.',

	-- We will not ban any player, we will only send a webhook message, this could be spammy
	OnlyAlert = false,

	-- The quality for a lossy image encoder, in a range for 0.0 - 1.0 (Default = 0.1), lower values will give less image quality but faster upload
	ImageQuality = 0.5,

	-- We will send logs to Discord
	Webhooks = {
		ban = 'YOUR-WEBHOOK',
		screenshot = 'YOUR-WEBHOOK',
		join = 'YOUR-WEBHOOK',
		left = 'YOUR-WEBHOOK'
	}
}

_C.Administrators = {
	-- Insert the identifier and the name of the admin
	['license:s687df786v87c687asd6'] = 'Jake',
	['steam:100000111abc'] = 'Julian',
	['live:123'] = 'LilChad',
	['xbl:100000111abc'] = 'Troll117',
	['discord:123456789'] = 'AxeFresh',
	['ip:127.0.0.1'] = 'ip-man'
}

_C.RequiredDiscriminators = {
	-- Insert the required discriminators to join the server (steam, license, live, xbl, discord, ip, fivem)
	'ip'
}

_C.Options = {
	-- ATTENTION: If you have disabled options (false values, or empty tables), you should comment that lines to improve performance (Just add '--' at the beginning of the option-line).

	-- If melee damage is more than X, we will ban (Default = 1.0)
	MeleeDamageModifier = 1.0,

	-- If weapon damage is more than X, we will ban (Default = 1.0)
	WeaponDamageModifier = 1.0,

	-- We will ban if the player is in spectator mode
	SpectatorMode = true,

	-- We will ban if the player is using night vision
	NightVision = true,

	-- We will ban if the player is using thermal vision
	ThermalVision = true,

	-- If amount of blips in entities is more than X, we will ban (Default = 2)
	Blips = 2,

	-- If amount of explosions is more than X in 10 seconds, we will ban (Default = 10, Ban every explosion = 0, Cancel explosion without banning = -1)
	TooManyExplosions = 10,

	-- If amount of particles is more than X in 10 seconds, we will ban (Default = 4, Ban every particle = 0, Cancel particle without banning = -1)
	TooManyParticles = 4,

	-- If amount of creating-entities is more than X in 10 seconds, we will ban (Default = 256)
	TooManyEntities = 256,

	-- We will ban if we found that one of this events was triggered with an injection
	EventAnalyzer = {
		'esx_billing:sendBill',
		'esx_ambulancejob:revive'
	},

	-- We will ban if the player tries to give another player a weapon
	GiveWeaponEvent = true,

	-- We will ban if the player tries to remove a weapon from another player
	RemoveWeaponEvent = true,

	-- We will ban if the player tries to remove all weapons from another player
	RemoveAllWeaponsEvent = true,

	-- We will ban if the player tries to clear tasks of another player
	ClearPedTasksEvent = true,

	-- We will ban if we found that a menu was injected
	MenuInjection = true,

	-- We will ban if we found that a vehicle was spawned with an injection
	VehicleInjection = true,

	-- We will ban if we found that a weapon was spawned with an injection
	WeaponInjection = true,

	-- We will ban if we found that a ped was spawned with an injection
	PedInjection = true,

	-- We will ban if we found that a object was spawned with an injection
	ObjectInjection = true,

	-- We will ban if we found that a revive was triggered with an injection
	ReviveInjection = true,

	-- We wll ban if we found an spoofed source message in chat
	SpoofedMessages = true
}

-- Here you can add hashes or event names to whitelist them
_C.Whitelist = {
	-730659924,
	1760825203
}

_C.Hashes = {
	-- If you want to show a custom name instead of the hash, you should add it here (Hash should be a number, and the value an string)
	-- [HASH] = 'CUSTOM NAME'
	[1171614426] = 'Ambulance',

	[`WEAPON_UNARMED`] = 'Unarmed',
	[`GADGET_PARACHUTE`] = 'Parachute',
	[`WEAPON_KNIFE`] = 'Knife',
	[`WEAPON_NIGHTSTICK`] = 'Nightstick',
	[`WEAPON_HAMMER`] = 'Hammer',
	[`WEAPON_BAT`] = 'Baseball Bat',
	[`WEAPON_CROWBAR`] = 'Crowbar',
	[`WEAPON_GOLFCLUB`] = 'Golf Club',
	[`WEAPON_BOTTLE`] = 'Bottle',
	[`WEAPON_DAGGER`] = 'Antique Cavalry Dagger',
	[`WEAPON_HATCHET`] = 'Hatchet',
	[`WEAPON_KNUCKLE`] = 'Knuckle Duster',
	[`WEAPON_MACHETE`] = 'Machete',
	[`WEAPON_FLASHLIGHT`] = 'Flashlight',
	[`WEAPON_SWITCHBLADE`] = 'Switchblade',
	[`WEAPON_BATTLEAXE`] = 'Battleaxe',
	[`WEAPON_POOLCUE`] = 'Poolcue',
	[`WEAPON_PIPEWRENCH`] = 'Wrench',
	[`WEAPON_STONE_HATCHET`] = 'Stone Hatchet',
	[`WEAPON_PISTOL`] = 'Pistol',
	[`WEAPON_PISTOL_MK2`] = 'Pistol Mk2',
	[`WEAPON_COMBATPISTOL`] = 'Combat Pistol',
	[`WEAPON_PISTOL50`] = 'Pistol .50  ',
	[`WEAPON_SNSPISTOL`] = 'SNS Pistol',
	[`WEAPON_SNSPISTOL_MK2`] = 'SNS Pistol Mk2',
	[`WEAPON_HEAVYPISTOL`] = 'Heavy Pistol',
	[`WEAPON_VINTAGEPISTOL`] = 'Vintage Pistol',
	[`WEAPON_MARKSMANPISTOL`] = 'Marksman Pistol',
	[`WEAPON_REVOLVER`] = 'Heavy Revolver',
	[`WEAPON_REVOLVER_MK2`] = 'Heavy Revolver Mk2',
	[`WEAPON_DOUBLEACTION`] = 'Double-Action Revolver',
	[`WEAPON_APPISTOL`] = 'AP Pistol',
	[`WEAPON_STUNGUN`] = 'Stun Gun',
	[`WEAPON_FLAREGUN`] = 'Flare Gun',
	[`WEAPON_RAYPISTOL`] = 'Up-n-Atomizer',
	[`WEAPON_MICROSMG`] = 'Micro SMG',
	[`WEAPON_MACHINEPISTOL`] = 'Machine Pistol',
	[`WEAPON_MINISMG`] = 'Mini SMG',
	[`WEAPON_SMG`] = 'SMG',
	[`WEAPON_SMG_MK2`] = 'SMG Mk2  ',
	[`WEAPON_ASSAULTSMG`] = 'Assault SMG',
	[`WEAPON_COMBATPDW`] = 'Combat PDW',
	[`WEAPON_MG`] = 'MG',
	[`WEAPON_COMBATMG`] = 'Combat MG  ',
	[`WEAPON_COMBATMG_MK2`] = 'Combat MG Mk2',
	[`WEAPON_GUSENBERG`] = 'Gusenberg Sweeper',
	[`WEAPON_RAYCARBINE`] = 'Unholy Deathbringer',
	[`WEAPON_ASSAULTRIFLE`] = 'Assault Rifle',
	[`WEAPON_ASSAULTRIFLE_MK2`] = 'Assault Rifle Mk2',
	[`WEAPON_CARBINERIFLE`] = 'Carbine Rifle',
	[`WEAPON_CARBINERIFLE_MK2`] = 'Carbine Rifle Mk2',
	[`WEAPON_ADVANCEDRIFLE`] = 'Advanced Rifle',
	[`WEAPON_SPECIALCARBINE`] = 'Special Carbine',
	[`WEAPON_SPECIALCARBINE_MK2`] = 'Special Carbine Mk2',
	[`WEAPON_BULLPUPRIFLE`] = 'Bullpup Rifle',
	[`WEAPON_BULLPUPRIFLE_MK2`] = 'Bullpup Rifle Mk2',
	[`WEAPON_COMPACTRIFLE`] = 'Compact Rifle',
	[`WEAPON_SNIPERRIFLE`] = 'Sniper Rifle',
	[`WEAPON_HEAVYSNIPER`] = 'Heavy Sniper',
	[`WEAPON_HEAVYSNIPER_MK2`] = 'Heavy Sniper Mk2',
	[`WEAPON_MARKSMANRIFLE`] = 'Marksman Rifle',
	[`WEAPON_MARKSMANRIFLE_MK2`] = 'Marksman Rifle Mk2',
	[`WEAPON_GRENADE`] = 'Grenade',
	[`WEAPON_STICKYBOMB`] = 'Sticky Bomb',
	[`WEAPON_PROXMINE`] = 'Proximity Mine',
	[`WAPAON_PIPEBOMB`] = 'Pipe Bomb',
	[`WEAPON_SMOKEGRENADE`] = 'Tear Gas',
	[`WEAPON_BZGAS`] = 'BZ Gas',
	[`WEAPON_MOLOTOV`] = 'Molotov',
	[`WEAPON_FIREEXTINGUISHER`] = 'Fire Extinguisher',
	[`WEAPON_PETROLCAN`] = 'Jerry Can',
	[`WEAPON_BALL`] = 'Ball',
	[`WEAPON_SNOWBALL`] = 'Snowball',
	[`WEAPON_FLARE`] = 'Flare',
	[`WEAPON_GRENADELAUNCHER`] = 'Grenade Launcher',
	[`WEAPON_RPG`] = 'RPG',
	[`WEAPON_MINIGUN`] = 'Minigun',
	[`WEAPON_FIREWORK`] = 'Firework Launcher',
	[`WEAPON_RAILGUN`] = 'Railgun',
	[`WEAPON_HOMINGLAUNCHER`] = 'Homing Launcher',
	[`WEAPON_COMPACTLAUNCHER`] = 'Compact Grenade Launcher',
	[`WEAPON_RAYMINIGUN`] = 'Widowmaker',
	[`WEAPON_PUMPSHOTGUN`] = 'Pump Shotgun',
	[`WEAPON_PUMPSHOTGUN_MK2`] = 'Pump Shotgun Mk2',
	[`WEAPON_SAWNOFFSHOTGUN`] = 'Sawed-off Shotgun',
	[`WEAPON_BULLPUPSHOTGUN`] = 'Bullpup Shotgun',
	[`WEAPON_ASSAULTSHOTGUN`] = 'Assault Shotgun',
	[`WEAPON_MUSKET`] = 'Musket',
	[`WEAPON_HEAVYSHOTGUN`] = 'Heavy Shotgun',
	[`WEAPON_DBSHOTGUN`] = 'Double Barrel Shotgun',
	[`WEAPON_SWEEPERSHOTGUN`] = 'Sweeper Shotgun',
	[`WEAPON_REMOTESNIPER`] = 'Remote Sniper',
	[`WEAPON_GRENADELAUNCHER_SMOKE`] = 'Smoke Grenade Launcher',
	[`WEAPON_PASSENGER_ROCKET`] = 'Passenger Rocket',
	[`WEAPON_AIRSTRIKE_ROCKET`] = 'Airstrike Rocket',
	[`WEAPON_STINGER`] = 'Stinger [Vehicle]',
	[`OBJECT`] = 'Object',
	[`VEHICLE_WEAPON_TANK`] = 'Tank Cannon',
	[`VEHICLE_WEAPON_SPACE_ROCKET`] = 'Rockets',
	[`VEHICLE_WEAPON_PLAYER_LASER`] = 'Laser',
	[`AMMO_RPG`] = 'Rocket',
	[`AMMO_TANK`] = 'Tank',
	[`AMMO_SPACE_ROCKET`] = 'Rocket',
	[`AMMO_PLAYER_LASER`] = 'Laser',
	[`AMMO_ENEMY_LASER`] = 'Laser',
	[`WEAPON_RAMMED_BY_CAR`] = 'Rammed by Car',
	[`WEAPON_FIRE`] = 'Fire',
	[`WEAPON_HELI_CRASH`] = 'Heli Crash',
	[`WEAPON_RUN_OVER_BY_CAR`] = 'Run over by Car',
	[`WEAPON_HIT_BY_WATER_CANNON`] = 'Hit by Water Cannon',
	[`WEAPON_EXHAUSTION`] = 'Exhaustion',
	[`WEAPON_EXPLOSION`] = 'Explosion',
	[`WEAPON_ELECTRIC_FENCE`] = 'Electric Fence',
	[`WEAPON_BLEEDING`] = 'Bleeding',
	[`WEAPON_DROWNING_IN_VEHICLE`] = 'Drowning in Vehicle',
	[`WEAPON_DROWNING`] = 'Drowning',
	[`WEAPON_BARBED_WIRE`] = 'Barbed Wire',
	[`WEAPON_VEHICLE_ROCKET`] = 'Vehicle Rocket',
	[`VEHICLE_WEAPON_ROTORS`] = 'Rotors',
	[`WEAPON_AIR_DEFENCE_GUN`] = 'Air Defence Gun',
	[`WEAPON_ANIMAL`] = 'Animal',
	[`WEAPON_COUGAR`] = 'Cougar'
}
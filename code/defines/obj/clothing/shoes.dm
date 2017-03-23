// OMG SHOES

/obj/item/clothing/shoes
	name = "shoes"
	icon = 'shoes.dmi'
	desc = "Comfortable-looking shoes."

	body_parts_covered = FEET

	protective_temperature = 500
	heat_transfer_coefficient = 0.10
	permeability_coefficient = 0.50
	slowdown = SHOES_SLOWDOWN
	armor = list(melee = 0, bullet = 0, laser = 2,energy = 2, bomb = 0, bio = 0, rad = 0)


/obj/item/clothing/shoes/syndigaloshes
	desc = "A pair of brown shoes. They seem to have extra grip."
	name = "Brown Shoes"
	icon_state = "brown"
	item_state = "brown"
	permeability_coefficient = 0.05
	flags = NOSLIP
	origin_tech = "syndicate=3"
	var/list/clothing_choices = list()

/obj/item/clothing/shoes/syndigaloshes/all

/obj/item/clothing/shoes/black
	name = "Black Shoes"
	icon_state = "black"
	color_hyalor = "black"
	desc = "A pair of black shoes."

	redcoat
		color_hyalor = "redcoat"	//Exists for washing machines. Is not different from black shoes in any way.

/obj/item/clothing/shoes/brown
	name = "Brown Shoes"
	desc = "A pair of brown shoes."
	icon_state = "brown"
	color_hyalor = "brown"

	captain
		color_hyalor = "captain"	//Exists for washing machines. Is not different from brown shoes in any way.
	hop
		color_hyalor = "hop"		//Exists for washing machines. Is not different from brown shoes in any way.
	ce
		color_hyalor = "chief"		//Exists for washing machines. Is not different from brown shoes in any way.
	rd
		color_hyalor = "director"	//Exists for washing machines. Is not different from brown shoes in any way.
	cmo
		color_hyalor = "medical"	//Exists for washing machines. Is not different from brown shoes in any way.
	cmo
		color_hyalor = "cargo"		//Exists for washing machines. Is not different from brown shoes in any way.

/obj/item/clothing/shoes/blue
	name = "Blue Shoes"
	icon_state = "blue"
	color_hyalor = "blue"

/obj/item/clothing/shoes/green
	name = "Green Shoes"
	icon_state = "green"
	color_hyalor = "green"

/obj/item/clothing/shoes/yellow
	name = "Yellow Shoes"
	icon_state = "yellow"
	color_hyalor = "yellow"

/obj/item/clothing/shoes/mime
	name = "Mime Shoes"
	icon_state = "mime"
	color_hyalor = "mime"

/obj/item/clothing/shoes/purple
	name = "Purple Shoes"
	icon_state = "purple"
	color_hyalor = "purple"

/obj/item/clothing/shoes/brown
	name = "Brown Shoes"
	icon_state = "brown"
	color_hyalor = "brown"

/obj/item/clothing/shoes/orange
	name = "Orange Shoes"
	icon_state = "orange"
	var/chained = 0
	color_hyalor = "orange"

/obj/item/clothing/shoes/swat
	name = "SWAT shoes"
	desc = "When you want to turn up the heat."
	icon_state = "swat"
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)
	flags = NOSLIP

/obj/item/clothing/shoes/combat //Basically SWAT shoes combined with galoshes.
	name = "combat boots"
	desc = "When you REALLY want to turn up the heat"
	icon_state = "swat"
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)
	flags = NOSLIP

/obj/item/clothing/shoes/space_ninja
	name = "ninja shoes"
	desc = "A pair of running shoes. Excellent for running and even better for smashing skulls."
	icon_state = "s-ninja"
	protective_temperature = 700
	permeability_coefficient = 0.01
	flags = NOSLIP
	armor = list(melee = 60, bullet = 50, laser = 30,energy = 15, bomb = 30, bio = 30, rad = 30)

/obj/item/clothing/shoes/white
	name = "White Shoes"
	icon_state = "white"
	permeability_coefficient = 0.25
	color_hyalor = "white"

/obj/item/clothing/shoes/sandal
	desc = "A pair of rather plain, wooden sandals."
	name = "sandals"
	icon_state = "wizard"

/obj/item/clothing/shoes/sandal/marisa
	desc = "A pair of magic, black shoes."
	name = "Magic Shoes"
	icon_state = "black"

/obj/item/clothing/shoes/galoshes
	desc = "Rubber boots"
	name = "galoshes"
	icon_state = "galoshes"
	permeability_coefficient = 0.05
	flags = NOSLIP
	slowdown = SHOES_SLOWDOWN+1

/obj/item/clothing/shoes/magboots
	desc = "Magnetic boots, often used during extravehicular activity to ensure the user remains safely attached to the vehicle."
	name = "magboots"
	icon_state = "magboots0"
	protective_temperature = 800
	heat_transfer_coefficient = 0.01
	var/magpulse = 0
//	flags = NOSLIP //disabled by default

/obj/item/clothing/shoes/clown_shoes
	desc = "The prankster's standard-issue clowning shoes. Damn they're huge!"
	name = "clown shoes"
	icon_state = "clown"
	item_state = "clown_shoes"
	slowdown = SHOES_SLOWDOWN+1
	color_hyalor = "clown"

/obj/item/clothing/shoes/jackboots
	name = "Jackboots"
	desc = "Nanotrasen-issue Security combat boots for combat scenarios or combat situations. All combat, all the time."
	icon_state = "jackboots"
	item_state = "jackboots"
	color_hyalor = "hosred"
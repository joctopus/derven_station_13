/obj/asteroid_plants
	var/atom/movable/plant_type //= pick(/obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/angel, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/amanita, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/libertycap, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/chanterelle)
	icon = 'hydroponics.dmi'

	New()
		..()
		upd_icn()

	proc/upd_icn()
		plant_type = pick(/obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/angel, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/amanita, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/libertycap, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/chanterelle)
		plant_type = new plant_type(src)
		if(istype(plant_type, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/angel))
			icon_state = "angel-grow3"

		if(istype(plant_type, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/amanita))
			icon_state = "amanita-grow3"

		if(istype(plant_type, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/libertycap))
			icon_state = "liberty-grow3"

		if(istype(plant_type, /obj/item/weapon/reagent_containers/food/snacks/grown/mushroom/chanterelle))
			icon_state = "chanter-grow3"

	attack_hand()
		plant_type.Move(src.loc)
		del(src)
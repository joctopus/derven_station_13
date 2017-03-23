var/global/list/cached_icons = list()

/obj/item/weapon/paint
	name = "Paint Can"
	desc = "Used to recolor_hyalor floors and walls. Can not be removed by the janitor."
	icon = 'items.dmi'
	icon_state = "paint_neutral"
	var/color_hyalor = "neutral"
	item_state = "paintcan"
	w_class = 3.0

/obj/item/weapon/paint/red
	name = "Red paint"
	color_hyalor = "FF0000"
	icon_state = "paint_red"

/obj/item/weapon/paint/green
	name = "Green paint"
	color_hyalor = "00FF00"
	icon_state = "paint_green"

/obj/item/weapon/paint/blue
	name = "Blue paint"
	color_hyalor = "0000FF"
	icon_state = "paint_blue"

/obj/item/weapon/paint/yellow
	name = "Yellow paint"
	color_hyalor = "FFFF00"
	icon_state = "paint_yellow"

/obj/item/weapon/paint/violet //no icon
	name = "Violet paint"
	color_hyalor = "FF00FF"
	icon_state = "paint_neutral"

/obj/item/weapon/paint/black
	name = "Black paint"
	color_hyalor = "333333"
	icon_state = "paint_black"

/obj/item/weapon/paint/white
	name = "White paint"
	color_hyalor = "FFFFFF"
	icon_state = "paint_white"


/obj/item/weapon/paint/anycolor_hyalor
	name = "Any color_hyalor"
	icon_state = "paint_neutral"

	attack_self(mob/user as mob)
		var/t1 = input(user, "Please select a color_hyalor:", "Locking Computer", null) in list( "red", "blue", "green", "yellow", "black", "white")
		if ((user.equipped() != src || user.stat || user.restrained()))
			return
		switch(t1)
			if("red")
				color_hyalor = "FF0000"
			if("blue")
				color_hyalor = "0000FF"
			if("green")
				color_hyalor = "00FF00"
			if("yellow")
				color_hyalor = "FFFF00"
	/*
			if("violet")
				color_hyalor = "FF00FF"
	*/
			if("white")
				color_hyalor = "FFFFFF"
			if("black")
				color_hyalor = "333333"
		icon_state = "paint_[t1]"
		add_fingerprint(user)
		return


/obj/item/weapon/paint/afterattack(turf/target, mob/user as mob)
	if(!istype(target) || istype(target, /turf/space))
		return
	var/ind = "[initial(target.icon)][color_hyalor]"
	if(!cached_icons[ind])
		var/icon/overlay = new/icon(initial(target.icon))
		overlay.Blend("#[color_hyalor]",ICON_MULTIPLY)
		overlay.SetIntensity(1.4)
		target.icon = overlay
		cached_icons[ind] = target.icon
	else
		target.icon = cached_icons[ind]
	return

/obj/item/weapon/paint/paint_remover
	name = "Paint remover"
	icon_state = "paint_neutral"

	afterattack(turf/target, mob/user as mob)
		if(istype(target) && target.icon != initial(target.icon))
			target.icon = initial(target.icon)
		return

var/image/FOV_image

client/proc/MYFOV()
	spawn(5)
		if(mob.resting == 0)
			for(var/mob/O in range(7, mob))
				if(O != mob && O.loc != mob.loc)
					if(draw_my_lines_and_check(mob.x, mob.y, mob.dir, 7, O) == 1)
						FOV_image = image(null)
						FOV_image.override = 1
						FOV_image.loc = O
						src << FOV_image
			//O.color = "red"

client/proc/clear_FOV()
	spawn(5)
		for(FOV_image in images)
			images.Remove(FOV_image)

/proc/check_line(var/start_x, var/start_y, var/mydir, var/atom/movable/myatom)
	var/list/xline = list(start_x)
	var/list/yline = list(start_y)
	var/counter = 0
	while(counter <= 7)

		counter += 1
		if(mydir == NORTH)
			yline.Add((start_y + 1) - counter)

		if(mydir == SOUTH)
			yline.Add((start_y - 1) + counter)

		if(mydir == EAST)
			xline.Add((start_x + 1) - counter)

		if(mydir == WEST)
			xline.Add((start_x - 1) + counter)

	if(myatom.x in xline) //danger
		if(myatom.y in yline)
			return 1

/proc/draw_my_lines_and_check(var/start_x, var/start_y, var/mydir, var/radius, var/atom/movable/myatom)
	var/counter = 0
	var/x_
	var/y_
	if(check_line(start_x, start_y, mydir, myatom))
		return 1
	while(counter <= radius)
		counter += 1
		if(mydir == NORTH)
			x_ = start_x - counter
			y_ = start_y - counter
			if(check_line(x_, y_, mydir, myatom) == 1)
				return 1

		if(mydir == SOUTH)
			x_ = start_x - counter
			y_ = start_y + counter
			if(check_line(x_, y_, mydir, myatom) == 1)
				return 1

		if(mydir == EAST)
			x_ = start_x - counter
			y_ = start_y - counter
			if(check_line(x_, y_, mydir, myatom) == 1)
				return 1

		if(mydir == WEST)
			x_ = start_x + counter
			y_ = start_y - counter
			if(check_line(x_, y_, mydir, myatom) == 1)
				return 1

	counter = 0
	while(counter <= radius)
		counter += 1
		if(mydir == NORTH)
			x_ = start_x + counter
			y_ = start_y - counter
			if(check_line(x_, y_, mydir, myatom) == 1)
				return 1

		if(mydir == SOUTH)
			x_ = start_x + counter
			y_ = start_y + counter
			if(check_line(x_, y_, mydir, myatom) == 1)
				return 1

		if(mydir == EAST)
			x_ = start_x - counter
			y_ = start_y + counter
			if(check_line(x_, y_, mydir, myatom) == 1)
				return 1

		if(mydir == WEST)
			x_ = start_x + counter
			y_ = start_y + counter
			if(check_line(x_, y_, mydir, myatom) == 1)
				return 1
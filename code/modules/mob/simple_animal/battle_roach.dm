#define HOSTILE_STANCE_IDLE 1
#define HOSTILE_STANCE_ALERT 2
#define HOSTILE_STANCE_ATTACK 3
#define HOSTILE_STANCE_ATTACKING 4
#define HOSTILE_STANCE_TIRED 5

/obj/effects/battleroach_spawner

/obj/effects/battleroach_spawner/process()
	spawn(290)
		battleroach_spawn()

/obj/effects/battleroach_spawner/New()
	..()
	processing_objects.Add(src)

/obj/effects/battleroach_spawner/proc/battleroach_spawn()
	if(prob(1))
		spawn(5)
			if(prob(15))
				new /mob/living/simple_animal/hostile/battleroach(src.loc)

//Look Sir, free roaches!
/mob/living/simple_animal/hostile/battleroach
	name = "battleroach"
	desc = "Wait..."
	icon = 'mob.dmi'
	icon_state = "roach"
	icon_living = "roach"
	icon_dead = "roach_dead"
	turns_per_move = 5
	melee_damage_upper = 8

	Life()
		..()
		if(health < 1)
			alive = 0
			icon_state = icon_dead
			stat = 2 			//Dead
			density = 0
			return

		if(prob(1))
			spawn(60)
				if(prob(2))
					spawn(25)
						if(prob(30))
							new /mob/living/simple_animal/hostile/battleroach(src.loc)

		if(client)
			return 0

		if(!stat)
			switch(stance)
				if(HOSTILE_STANCE_IDLE)
					target_mob = FindTarget()

				if(HOSTILE_STANCE_ATTACK)
					if(destroy_surroundings)
						DestroySurroundings()
					MoveToTarget()

				if(HOSTILE_STANCE_ATTACKING)
					if(destroy_surroundings)
						DestroySurroundings()
					AttackTarget()
var/datum/sound_effects_controller/sfc = new()

datum/sound_effects_controller
	proc/process()
		spawn(80)
			if(prob(8))
				var/sound/S = pick(sound('clownstep1.ogg'),sound('slip.ogg'), sound('rustle1.ogg'), sound('rustle1.ogg'), sound('shotgunpump.ogg'), sound('punch3.ogg'))
				for(var/mob/M in locate(/area/centcom/control))
					if(M.client)
						M << S
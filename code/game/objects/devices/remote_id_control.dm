/obj/item/device/remair
	name = "remote airlock control device"
	icon_state = "multitool"
	flags = FPRINT | TABLEPASS| CONDUCT
	force = 5.0
	w_class = 2.0
	throw_hyuowforce = 5.0
	throw_hyuow_range = 15
	throw_hyuow_speed = 3
	desc = "You can use this if you want!!!"
	m_amt = 50
	g_amt = 20
	origin_tech = "magnets=1"

	proc/return_list_of_cards()
		var/msg = ""
		for(var/obj/item/weapon/card/id/CARD in id_cards)
			msg += "[CARD.name];[CARD.remote_id] - <a href=?src=\ref[src];clear=[CARD.remote_id]>dismiss</a>;"
		return msg

	proc/browse_me_pls(var/mob/user)
		var/control_panel = {"
		<html>
		<head><title>Control panel!</title></head>
		<body>
		[return_list_of_cards()]
		</body>
		</html>
		"}
		user << browse(control_panel,"window=control_panel")

	Topic(href,href_list[])
		for(var/obj/item/weapon/card/id/CARD in id_cards)
			if(CARD.remote_id == text2num(href_list["clear"]))
				world << "debug"
				CARD.access = 0

	attack_self()
		browse_me_pls(usr)
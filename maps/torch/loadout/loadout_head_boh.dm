/datum/gear/head/self_protection_helmet
	display_name = "civilian self-protection helmet"
	path = /obj/item/clothing/head/hardhat/self_protection
	cost = 2
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/fleetcap
	display_name = "fleet cap"
	path = /obj/item/clothing/head/soft/solgov/fleet
	cost = 0
	allowed_branches = list(/datum/mil_branch/fleet)

/datum/gear/head/corpsecberet
	display_name = "corporate security beret"
	path = /obj/item/clothing/head/beret/guard
	allowed_branches = list(/datum/mil_branch/fleet, /datum/mil_branch/private_security)

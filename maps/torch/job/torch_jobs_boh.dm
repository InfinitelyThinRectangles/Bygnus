// Consist of modular changes, for now.

// Command
// Captain is basically a modular fix.
/datum/job/captain
	allowed_branches = list(
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o6
	)

/datum/job/hop
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o5,
	)

/datum/job/rd
	allowed_branches = list(
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3
	)

/datum/job/cmo
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
	)

/datum/job/chief_engineer
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
	)

/datum/job/hos
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
	)

/datum/job/sea
	title = "Fleet Senior Enlisted Advisor"

/datum/job/bridgeofficer
	alt_titles = list(
		"Helmsman",
		"Tactical Officer",
		"Sensor Operator"
	)
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
	)

/datum/job/solrep
	allowed_branches = list(
		/datum/mil_branch/solgov
	)
	allowed_ranks = list(
		/datum/mil_rank/sol/gov
	)
/***/

// Engineering
/datum/job/senior_engineer
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o1,

	)

/datum/job/engineer
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/engineering/contractor,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
	)

/datum/job/roboticist
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/o1,
	)

/datum/job/engineer_trainee
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e1,
	)
/***/

// Exploration
/datum/job/pathfinder
	allowed_branches = list(/datum/mil_branch/fleet)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
	)

/datum/job/nt_pilot
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/exploration/pilot
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/nt_pilot,
		/datum/mil_rank/fleet/o1,
	)

/datum/job/explorer
	allowed_branches = list(/datum/mil_branch/fleet)

	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
	)
	min_skill = list(SKILL_EVA = SKILL_BASIC, SKILL_SCIENCE = SKILL_BASIC) // To make up SGF not having sci skill by default.
/***/

// Medical
/datum/job/senior_doctor
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/senior,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/civ/contractor
	)

/datum/job/doctor
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/senior,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/civ/contractor
	)

/datum/job/medical_trainee
	allowed_branches = list(
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e1,
	)

/datum/job/psychiatrist
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/ec,
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/o1,
	)
/***/

// Research
/datum/job/senior_scientist
	allowed_branches = list(
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o3
	)

/datum/job/scientist
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
	)
	allowed_ranks = list(,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/scientist,
	)

/datum/job/scientist_assistant
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/civ/contractor = /decl/hierarchy/outfit/job/torch/passenger/research/assist,
	)
/***/

// Security
/datum/job/warden
	title = "Brig Chief"
	alt_titles = list(
		"Warden"
	)
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o1,
	)

/datum/job/detective
	allowed_branches = list(
		/datum/mil_branch/spacefbi = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/agent
	)
	allowed_ranks = list(
		/datum/mil_rank/sol/agent
	)

/datum/job/officer
	title = "Security Guard"
	alt_titles = list(
		"Master at Arms",
		"Enforcer",
		"Military Police"
	)
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/private_security
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/private_security/pcrc = /decl/hierarchy/outfit/job/torch/crew/security/maa/pcrc,
		/datum/mil_rank/private_security/saare = /decl/hierarchy/outfit/job/torch/crew/security/maa/saare
	)
/***/

// Service
/datum/job/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/chaplain/ec,
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
	)

/datum/job/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/janitor/ec,
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e1,
		/datum/mil_rank/fleet/e2,
	)

/datum/job/chef
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/cook/ec,
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e1,
		/datum/mil_rank/fleet/e2,
	)

/datum/job/crew
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e1,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
	)
/***/

// Supply
/datum/job/qm
	allowed_branches = list(
		/datum/mil_branch/fleet,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
	)

/datum/job/cargo_tech
	allowed_branches = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/supply/contractor,
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/civ/contractor
	)
/***/

// Corporate
/datum/job/bodyguard
	allowed_branches = list(/datum/mil_branch/private_security, /datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/private_security/pcrc = /decl/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/pcrc,
		/datum/mil_rank/private_security/pcrc_agt = /decl/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/pcrc/agent,
		/datum/mil_rank/private_security/saare = /decl/hierarchy/outfit/job/torch/passenger/corporate_bodyguard/saare,
		/datum/mil_rank/civ/contractor
	)

/datum/job/bodyguard/get_description_blurb()
	return "You are the Loss Prevention Associate. Your job is to prevent the loss of the Liason's life - even at the cost of your own. Good luck."
/***/

// Law
/datum/job/bailiff
	allowed_branches = list(/datum/mil_branch/private_security, /datum/mil_branch/civilian, /datum/mil_branch/solgov)
	allowed_ranks = list(
		/datum/mil_rank/private_security/pcrc = /decl/hierarchy/outfit/job/torch/crew/command/bailiff/pcrc,
		/datum/mil_rank/private_security/pcrc_agt = /decl/hierarchy/outfit/job/torch/crew/command/bailiff/pcrc/agent,
		/datum/mil_rank/private_security/saare = /decl/hierarchy/outfit/job/torch/crew/command/bailiff/saare,
		/datum/mil_rank/sol/agent = /decl/hierarchy/outfit/job/torch/crew/command/bailiff/agent,
		/datum/mil_rank/civ/contractor
	)

/datum/job/bodyguard/get_description_blurb()
	return "You are the Bailiff. You are the assistant of the Chief Adjudicator. Your job is to assist and protect him in his endeavours. Good luck."

/***/

// Misc
/datum/job/assistant
	skill_points = 18

/datum/job/psiadvisor
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/foundationadvisor)
/*
/////////
// flag - boh
/////////
/datum/job/flag
	title = "Flag Officer"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	latejoin_at_spawnpoints = 1
	supervisors = "High Command"
	selection_color = "#807c7c"
	minimum_character_age = list(SPECIES_HUMAN = 52)
	ideal_character_age = 60
	skill_points = 24
	economic_power = 16
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/CO
	allowed_branches = list(
		/datum/mil_branch/marine_corps = /decl/hierarchy/outfit/job/torch/crew/command/sea/marine,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/CO/fleet
	)
	allowed_ranks = list(
	/datum/mil_rank/marine_corps/o7,
	/datum/mil_rank/marine_corps/o8,
	/datum/mil_rank/marine_corps/o9,
	/datum/mil_rank/marine_corps/o10,
	/datum/mil_rank/fleet/o7,
	/datum/mil_rank/fleet/o8,
	/datum/mil_rank/fleet/o9,
	/datum/mil_rank/fleet/o10
	)

/datum/job/flag/get_access()
	return get_all_station_access()

/datum/job/flag/post_equip_rank(var/mob/person, var/alt_title)
	var/sound/announce_sound = (GAME_STATE <= RUNLEVEL_SETUP)? null : sound('sound/misc/boatswain.ogg', volume=20)
	captain_announcement.Announce("All hands, [alt_title || title] [person.real_name] on deck!", new_sound = announce_sound)
	..()

/datum/job/flag/is_position_available()
	return FALSE
*/

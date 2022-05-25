// Branch-specific defines
#define UNRESTRICTED /datum/mil_branch/civilian, /datum/mil_branch/fleet
#define SEMIRESTRICTED  /datum/mil_branch/private_security, /datum/mil_branch/spacefbi

// Rank-specific defines
#define SMC_TROOPERS_ONLY /datum/mil_branch/marine_corps = list(\
	/datum/mil_rank/marine_corps/e1,\
	/datum/mil_rank/marine_corps/e2,\
	/datum/mil_rank/marine_corps/e3,\
	/datum/mil_rank/marine_corps/e4,\
	)
#define NTEF_ENLISTED_ONLY /datum/mil_branch/fleet = list(\
	/datum/mil_rank/fleet/e1, \
	/datum/mil_rank/fleet/e2, \
	/datum/mil_rank/fleet/e3, \
	)
#define SOLGOV_NO_SFP /datum/mil_branch/solgov = list(\
	/datum/mil_rank/sol/gov, \
	/datum/mil_rank/sol/scientist, \
	)

#define SOLGOV_SFP /datum/mil_branch/spacefbi = list(/datum/mil_rank/sol/agent)

/datum/map/torch
	branch_types = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/spacefbi,
		/datum/mil_branch/private_security,
		/datum/mil_branch/army,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	spawn_branch_types = list(
		/datum/mil_branch/fleet,
		/datum/mil_branch/civilian,
		/datum/mil_branch/solgov,
		/datum/mil_branch/spacefbi,
		/datum/mil_branch/private_security,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	species_to_branch_blacklist = list(
		/datum/species/human   = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/machine = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/datum/species/vox     = list(/datum/mil_branch/solgov, /datum/mil_branch/fleet, /datum/mil_branch/skrell_fleet)
	)

	species_to_branch_whitelist = list(
		/datum/species/diona		= list(UNRESTRICTED, /datum/mil_branch/solgov, /datum/mil_branch/private_security),
		/datum/species/nabber		= list(/datum/mil_branch/civilian),
		/datum/species/skrell		= list(UNRESTRICTED, SEMIRESTRICTED, /datum/mil_branch/solgov, /datum/mil_branch/skrell_fleet),
		/datum/species/unathi		= list(UNRESTRICTED, SEMIRESTRICTED, /datum/mil_branch/solgov),
		/datum/species/unathi/yeosa	= list(UNRESTRICTED, SEMIRESTRICTED, /datum/mil_branch/solgov),
		/datum/species/adherent		= list(/datum/mil_branch/civilian, /datum/mil_branch/solgov),
		/datum/species/custom		= list(UNRESTRICTED, SEMIRESTRICTED, /datum/mil_branch/solgov),
		/datum/species/humanathi	= list(UNRESTRICTED, SEMIRESTRICTED, /datum/mil_branch/solgov),
		/datum/species/tajaran		= list(UNRESTRICTED, SEMIRESTRICTED, /datum/mil_branch/solgov),
 		/datum/species/shapeshifter/promethean	= list(UNRESTRICTED, /datum/mil_branch/solgov, /datum/mil_branch/private_security),
		/datum/species/plasmasans	= list(UNRESTRICTED, SEMIRESTRICTED, /datum/mil_branch/civilian, /datum/mil_branch/solgov, /datum/mil_branch/private_security),
		/datum/species/vox			= list(/datum/mil_branch/alien, /datum/mil_branch/civilian),
		/datum/species/vox/armalis	= list(/datum/mil_branch/alien)
	)

	species_to_rank_whitelist = list(
		/datum/species/diona		= list(SOLGOV_NO_SFP),
		/datum/species/adherent		= list(SOLGOV_NO_SFP),
		/datum/species/shapeshifter/promethean	= list(SOLGOV_NO_SFP),
		/datum/species/plasmasans	= list(SOLGOV_NO_SFP)
	)

/datum/mil_branch/fleet
	name = "Cygnus Scout Corps"
	name_short = "CSC"
	email_domain = "dagon.sgf.mil"

	rank_types = list(
		/datum/mil_rank/fleet/e1,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5,
		/datum/mil_rank/fleet/o6,
		/datum/mil_rank/fleet/o7,
		/datum/mil_rank/fleet/o8,
	)

	spawn_rank_types = list(
		/datum/mil_rank/fleet/e1,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5,
		/datum/mil_rank/fleet/o6
	)

	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_WEAPONS = SKILL_BASIC,
						SKILL_COMBAT  = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

/*
 *  Fleet (SGF Override)
 *  =====
 */
/datum/mil_rank/fleet/e1
	name = "Crewman Apprentice"
	name_short = "CRA"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 1
	pow_cat = 1

/datum/mil_rank/fleet/e2
	name = "Crewman"
	name_short = "CR"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e2, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 2
	pow_cat = 1

/datum/mil_rank/fleet/e3
	name = "Senior Crewman"
	name_short = "SCR"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/enlisted/e3, /obj/item/clothing/accessory/solgov/specialty/enlisted)
	sort_order = 3
	pow_cat = 1

/datum/mil_rank/fleet/o1
	name = "Ensign"
	name_short = "ENS"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 16
	pow_cat = 3
	cit_rank = 4

/datum/mil_rank/fleet/o2
	name = "Lieutenant"
	name_short = "LT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o2, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 17
	pow_cat = 3
	cit_rank = 4

/datum/mil_rank/fleet/o3
	name = "Senior Lieutenant"
	name_short = "SLT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o2, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 17
	pow_cat = 3
	cit_rank = 4

/datum/mil_rank/fleet/o4
	name = "Lieutenant Commander"
	name_short = "LTCR"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o3, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 18
	pow_cat = 3
	cit_rank = 4

/datum/mil_rank/fleet/o5
	name = "Commander"
	name_short = "CMDR"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o4, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 19
	pow_cat = 4
	cit_rank = 4

/datum/mil_rank/fleet/o6
	name = "Captain"
	name_short = "CAPT"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o5, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 20
	pow_cat = 4
	cit_rank = 4

/datum/mil_rank/fleet/o7
	name = "Commodore"
	name_short = "CDRE"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/officer/o6, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 21
	pow_cat = 4
	cit_rank = 5

/datum/mil_rank/fleet/o8
	name = "Admiral"
	name_short = "ADM"
	accessory = list(/obj/item/clothing/accessory/solgov/rank/fleet/flag, /obj/item/clothing/accessory/solgov/specialty/officer)
	sort_order = 22
	pow_cat = 5
	cit_rank = 5

/*****/

// Addon: Sec Contractors
/datum/mil_branch/private_security
	name = "Security Company"
	name_short = "Sec"
	email_domain = "dagon.sec"

	rank_types = list(
		/datum/mil_rank/private_security/pcrc,
		/datum/mil_rank/private_security/pcrc_agt,
		/datum/mil_rank/private_security/saare
	)

	spawn_rank_types = list(
		/datum/mil_rank/private_security/pcrc,
		/datum/mil_rank/private_security/pcrc_agt,
		/datum/mil_rank/private_security/saare
	)

/datum/mil_rank/private_security/pcrc
	name = "PCRC Contractor"
	name_short = "PCRC"
	pow_cat = 3
	cit_rank = 3

// Kind of hacky, to allow usage of PCRC suit via outfit.
/datum/mil_rank/private_security/pcrc_agt
	name = "PCRC Agent"
	name_short = "PCRC-AGT"
	pow_cat = 3
	cit_rank = 3

/datum/mil_rank/private_security/saare
	name = "SAARE Operative"
	name_short = "SAARE"
	pow_cat = 3
	cit_rank = 3

/*****/

/datum/mil_branch/spacefbi
	name = "Solarian Federal Police"
	name_short = "SFP"
	email_domain = "dagon.sec"

	rank_types = list(/datum/mil_rank/sol/agent)

	spawn_rank_types = list(/datum/mil_rank/sol/agent)

/datum/mil_rank/sol/agent
	name = "SFP Agent"
	name_short = "AGT"
	accessory = list(/obj/item/clothing/accessory/badge/agent)
	pow_cat = 3
	cit_rank = 5

/*****/
// Ends of defines
#undef UNRESTRICTED
#undef SEMIRESTRICTED
#undef SMC_TROOPERS_ONLY
#undef SMC_LIMITED_RANKS
#undef NTEF_ENLISTED_ONLY
#undef SOLGOV_NO_SFP
#undef SOLGOV_SFP
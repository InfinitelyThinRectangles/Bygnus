
/datum/sprite_accessory/hair
	species_allowed = list(SPECIES_HUMAN,SPECIES_OLDUNATHI,SPECIES_VOX,SPECIES_AKULA,SPECIES_VULP,SPECIES_VASS,SPECIES_TAJ,SPECIES_IPC,SPECIES_CUSTOM,SPECIES_HUMAN2,SPECIES_PROMETHEAN)

/datum/sprite_accessory/facial_hair
	species_allowed = list(SPECIES_HUMAN,SPECIES_OLDUNATHI,SPECIES_VOX,SPECIES_AKULA,SPECIES_VULP,SPECIES_VASS,SPECIES_TAJ,SPECIES_IPC,SPECIES_CUSTOM,SPECIES_HUMAN2,SPECIES_PROMETHEAN)

/datum/sprite_accessory/facial_hair/shaved	//Because of course they're going to override this for whatever reason
	species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI,SPECIES_OLDUNATHI,SPECIES_VOX,SPECIES_AKULA,SPECIES_VULP,SPECIES_VASS,SPECIES_TAJ,SPECIES_IPC,SPECIES_CUSTOM,SPECIES_HUMAN2,SPECIES_PROMETHEAN)

/* Fallback in case our primary bald hair override in the real accessory_hair.dm breaks
/datum/sprite_accessory/hair/bald
	species_allowed = list(SPECIES_HUMAN,SPECIES_UNATHI,SPECIES_OLDUNATHI,SPECIES_VOX,SPECIES_AKULA,SPECIES_VULP,SPECIES_VASS,SPECIES_TAJ,SPECIES_IPC,SPECIES_CUSTOM,SPECIES_HUMAN2,SPECIES_PROMETHEAN)
*/
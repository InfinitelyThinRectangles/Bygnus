/obj/item/organ/internal/augment/active/hud
	name = "integrated HUD"
	desc = "A small implantable heads-up display."
	icon_state = "eye"
	action_button_name = "Toggle HUD"
	allowed_organs = list(BP_AUGMENT_HEAD)
	var/list/hud_type = list(HUD_MEDICAL, HUD_SECURITY)
	var/active = FALSE

/obj/item/organ/internal/augment/active/hud/Process()
	..()
	if (!owner)
		return

	if (active)
		if (hud_type == HUD_MEDICAL)
			req_access = list(access_medical)
			if (allowed(owner))
				process_med_hud(owner, 1)
		else if (hud_type == HUD_SECURITY)
			req_access = list(access_security)
			if (allowed(owner))
				process_sec_hud(owner, 1)

/obj/item/organ/internal/augment/active/hud/emp_act(severity)
	if (istype(src.loc, /mob/living/carbon/human))
		var/mob/living/carbon/human/M = src.loc
		to_chat(M, SPAN_DANGER("Your [name] malfunctions, blinding you!"))
		M.eye_blind = 4
		M.eye_blurry = 8
		take_general_damage(rand(5, 15))
		if (active)
			active = FALSE

/obj/item/organ/internal/augment/active/hud/activate()
	if (!can_activate())
		return
	active = !active

/obj/item/organ/internal/augment/active/hud/health
	name = "integrated health HUD"
	desc = "The Vey-Med H-27 is an implantable HUD, designed to interface directly with the user's optic nerve and display information about patient vitals."
	icon_state = "eye_medical"
	hud_type = HUD_MEDICAL

/obj/item/organ/internal/augment/active/hud/security
	name = "integrated security HUD"
	desc = "The Hephaestus Industries C-VSR is an implantable HUD, designed to interface directly with the user's optic nerve and local databases to display security information."
	hud_type = HUD_SECURITY
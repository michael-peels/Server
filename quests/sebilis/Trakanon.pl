sub EVENT_KILLED_MERIT {
	# check if $client is on the nagafen kill task, if so award flags for kunark
	if (quest::istaskactivityactive(290,2)) {
		quest::set_zone_flag(48); # cobalt scar
		quest::set_zone_flag(58); # crystal caverns
		quest::set_zone_flag(102);# Eastern Wastes
		quest::set_zone_flag(136);# TOFS
		quest::set_zone_flag(139);# Great Divide
		quest::set_zone_flag(143);# Plane of Growth
		quest::set_zone_flag(174);# Iceclad
		quest::set_zone_flag(186);# Kael
		quest::set_zone_flag(223);# Plane of Mischief
		quest::set_zone_flag(243);# Dragon Necropolis
		quest::set_zone_flag(344);# Siren's
		quest::set_zone_flag(347);# Skyshrine
		quest::set_zone_flag(348);# Sleepers
		quest::set_zone_flag(388);# Temple Veeshan
		quest::set_zone_flag(404);# Thurgadin
		quest::set_zone_flag(405);# Icewell
		quest::set_zone_flag(424);# Velketor's Lab
		quest::set_zone_flag(428);# Wakening Land
		quest::set_zone_flag(436);# Western Wastes		
	}
}
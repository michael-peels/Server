# Attempt to limit players level 53 and over from engaging nagafen and vox.
# Banished to Lavastorm.
my $SpawnX = 0;
my $SpawnY = 0;
my $SpawnZ = 0;
my $SpawnH = 0;

sub EVENT_SPAWN {
  $SpawnX = $x;
  $SpawnY = $y;
  $SpawnZ = $z;
  $SpawnH = $h;
  my $range = 200;
  quest::set_proximity($x - $range, $x + $range, $y - $range, $y + $range);
  quest::setnexthpevent(96);
}

sub EVENT_KILLED_MERIT {
	quest::ze(0,"EVENT KILLED MERIT TRIGGERED!");
	# check if $client is on the nagafen kill task, if so award flags for kunark
	if (quest::istaskactivityactive(290,1)) {
		quest::ze(0,"isTaskActivityActive is true!");
		quest::set_zone_flag(87);#1 burning woods
		quest::set_zone_flag(103);#2 chardok
		quest::set_zone_flag(90);#3 City of mist
		quest::set_zone_flag(104);#4 dalnir
		quest::set_zone_flag(86);#5 dreadlands
		quest::set_zone_flag(106);#6 cabeast
		quest::set_zone_flag(82);#7 cabwest
		quest::set_zone_flag(94);#8 emeraldjungle
		quest::set_zone_flag(78);#9 fieldofbone
		quest::set_zone_flag(84);#10 firiona
		quest::set_zone_flag(92);#11 frontiermtns
		quest::set_zone_flag(105);#12 charasis
		quest::set_zone_flag(88);#13 kaesora
		quest::set_zone_flag(102);#14 karnor
		quest::set_zone_flag(97);#15 Kurn
		quest::set_zone_flag(85);#16 lakeofillomen
		quest::set_zone_flag(107);#17 nurga
		quest::set_zone_flag(89);#18 sebilis
		quest::set_zone_flag(91);#19 skyfire
		quest::set_zone_flag(83);#20 swampofnohope
		quest::set_zone_flag(96);#21 timorous
		quest::set_zone_flag(95);#22 trakanon
		quest::set_zone_flag(108);#23 veeshan
		quest::set_zone_flag(79);#24 warsliks
		quest::set_zone_flag(81);#25 droga
		quest::set_zone_flag(93);#26 overthere
	} else {
		quest::ze(0,"isTaskActivityActive is false");
	}
}

sub EVENT_HP {
  #if my HP are dropping make certain the timer is running
  #this gets around 100% pet tanking, because the owner is
  #on the aggro list but with 0's and EVENT_AGGRO isn't firing.
  quest::stoptimer(1);
  EVENT_AGGRO();
  #backup safety check
  quest::setnexthpevent(int($npc->GetHPRatio())-9);
}

sub EVENT_AGGRO {
  # a 1 second leash timer.
  quest::settimer(1,1);
}

sub EVENT_TIMER {
  if ($timer == 1) {
    if($x < -1000 || $x > -650 || $y < -1500 || $y > -1290) {
      WIPE_AGGRO();
    }
    my @hate_list = $npc->GetHateList();
	my $hate_count = @hate_list;
	if ($hate_count > 0) {
      foreach $ent (@hate_list) {
        my $h_ent = $ent->GetEnt();
	    my $h_dmg = $ent->GetDamage();
	    my $h_hate = $ent->GetHate();
        if ($h_ent->IsClient()) {
          if ($h_ent->GetLevel() > 65) {
            quest::ze(0,"I will not fight you, but I will banish you!");
            $h_ent->CastToClient()->MovePC(27,-64,262,-93.96,0);
          }
        }
	  }
    } else {
      WIPE_AGGRO();
	}
  }
}

sub WIPE_AGGRO {
  $npc->BuffFadeAll();
  $npc->WipeHateList();
  $npc->SetHP($npc->GetMaxHP());
  $npc->GMMove($SpawnX,$SpawnY,$SpawnZ,$SpawnH);
  quest::stoptimer(1);
  quest::setnexthpevent(96);
}

# EOF zone: soldungb ID: 32040 NPC: Lord_Nagafen
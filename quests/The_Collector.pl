sub EVENT_SAY { 
	my $wish = quest::saylink("wish");
	my $singingShortSword = quest::saylink("Singing Short Sword (Bard)");
	my $clawOfTheSavageSpirit = quest::saylink("Claws of the Savage Spirit (Bst)");
	my $waterSprinklerOfNemAnkh = quest::saylink("Water Sprinkler of Nem Ankh (Cleric)");
	my $natureWalkersScimitar = quest::saylink("Nature Walkers Scimitar (Druid)");
	my $staffOfTheSerpent = quest::saylink("Staff of the Serpent (Ench)");
	my $orbOfMastery = quest::saylink("Orb of Mastery (Mage)");
	my $celestialFist = quest::saylink("Celestial Fists (Mnk)");
	my $scytheOfTheShadowedSoul = quest::saylink("Scythe of the Shadowed Soul (Nec)");
	my $fieryDefender = quest::saylink("Fiery Defender (Pal)");
	my $earthCaller = quest::saylink("Earthcaller and Swiftwind (Ranger)");
	my $rageBringer = quest::saylink("Ragebringer (Rogue)");
	my $innoruuksCurse = quest::saylink("Innoruuk's Curse (SK)");
	my $spearOfFate = quest::saylink("Spear of Fate (Shm)");
	my $bladeOfStrategy = quest::saylink("Blade of Strategy and Tactics (War)");
	my $staffOfTheFour = quest::saylink("Staff of the Four (Wiz)");

	if ($text=~/Hail/i) {
		# If client has an epic item already-
		if (plugin::check_hasitem($client, 20542) ||
			plugin::check_hasitem($client, 8495)  ||
			plugin::check_hasitem($client, 5532)  ||
			plugin::check_hasitem($client, 20490) ||
			plugin::check_hasitem($client, 10650) ||
			plugin::check_hasitem($client, 28034) ||
			plugin::check_hasitem($client, 10652) ||
			plugin::check_hasitem($client, 20544) ||
			plugin::check_hasitem($client, 10099) ||
			plugin::check_hasitem($client, 20488) ||
			plugin::check_hasitem($client, 11057) ||
			plugin::check_hasitem($client, 14383) ||
			plugin::check_hasitem($client, 10651) ||
			plugin::check_hasitem($client, 10910) ||
			plugin::check_hasitem($client, 10908) ||
			plugin::check_hasitem($client, 14341)) {
			quest::say("Wow, I see you too are a collector of epic items. I would be willing to barter with you if you $wish.");
			quest::setglobal("HasEpic1",1,5,"F");
		} else {
			quest::say("Hail and well met! Maybe we can chat a bit more once you obtain an epic item.");
		}
	}

	if ($text=~/wish/i){
		quest::say("I will sell you one of the following items for 3,000 platinum.");
		quest::say("$singingShortSword");
		quest::say("$clawOfTheSavageSpirit");
		quest::say("$waterSprinklerOfNemAnkh");
		quest::say("$natureWalkersScimitar");
		quest::say("$staffOfTheSerpent");
		quest::say("$orbOfMastery");
		quest::say("$celestialFist");
		quest::say("$scytheOfTheShadowedSoul");
		quest::say("$fieryDefender");
		quest::say("$earthCaller");
		quest::say("$rageBringer");
		quest::say("$innoruuksCurse");
		quest::say("$spearOfFate");
		quest::say("$bladeOfStrategy");
		quest::say("$staffOfTheFour");
	}

	if ($text=~/Singing Short Sword/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(20542);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Claws of the Savage Spirit/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(8495);
			quest::summonitem(8496);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Water Sprinkler of Nem Ankh/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(5532);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Nature Walkers Scimitar/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(20490);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Staff of the Serpent/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(10650);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Orb of Mastery/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(19436);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Celestial Fists/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(10652);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Scythe of the Shadowed Soul/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(20544);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Fiery Defender/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(10099);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Earthcaller and Swiftwind/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(20487);
			quest::summonitem(20488);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Ragebringer/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(11057);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Innoruuk's Curse/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(14383);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Spear of Fate/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(10651);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Blade of Strategy and Tactics/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(10910);
			quest::summonitem(10909);
			quest::summonitem(17859);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}
	if ($text=~/Staff of the Four/i && defined $qglobals{"HasEpic1"}){
		if($client->TakeMoneyFromPP(3000000,1)) {
			quest::say("Here you go!!");
			quest::summonitem(14341);
		} else {
			quest::say("I'm sorry but you don't have enough platinum!");
		}
	}

}

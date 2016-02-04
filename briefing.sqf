waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["serverinfo","Server Information"];
//player createDiarySubject ["changelog","Development"];
player createDiarySubject ["serverrules","Civilian Rules"];
player createDiarySubject ["coprules","Cop Rules"];
player createDiarySubject ["medrules","Medic Rules"];
//player createDiarySubject ["safezones","Safe Zones (No Killing)"];
player createDiarySubject ["illegalitems","Illegal Items/Vehicles"];
player createDiarySubject ["guides","Guides & Tutorials"];
player createDiarySubject ["prices","Price Guide"];
//player createDiarySubject ["vic","Vehicle Cargo Store"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["serverinfo",
		[
			"Archetype Gaming Server/Community Information",
				"
				Website: archetypegaming.ipbhost.com<br/>
				<br/>
				Teamspeak 3 IP: archetypegts.ts.nfoservers.com<br/><br/>
				"
		]
	];

	/*player createDiaryRecord["changelog",
		[
			"Archetype Development",
				"
				The official change log can be found on our website: archetypegaming.ipbhost.com under the Development section of the forums.<br/><br/>
				"
		]
	];*/

	player createDiaryRecord ["serverrules",
		[
			"Archetype Gaming Civilian/Server Rules",
			"
			The rules displayed on the map will be kept as up-to-date as possible. However, for the most accurate rule-set, please visit our website.<br/>
			<br/>
			The Official Archetype Gaming Server Rules can be found on our website: archetypegaming.ipbhost.com under the Archetype Gaming Rules and Regulations section of the Forums.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"RDM (Random Deathmatch)",
			"
			1. Killing another player without a proper initiation of role play is considered RDM.<br/>
 			<br/>
 			<br/>
			2. Killing someone through exploitation of game mechanics (i.e. closing a gate on someone, purposefully flipping a vehicle on someone, flipping a vehicle under another, etc.) is considered RDM.<br/>
			<br/>
			<br/>
			3. Text Messaging via the phone and vocally addressing someone by name via direct chat are acceptable forms of RP initiation.<br/>
			<br/>
			<br/>
			4. When addressing someone to initiate RP a minimum of 5 seconds must be given to the addressed party or it will be considered RDM.<br/>
			<br/>
			<br/>
			NOTE: If the party appears to respond to your address by pulling out a gun, running wildly, or otherwise indicating that they have heard you, RP has been initiated.<br/>
			<br/>
			<br/>
			5. Once RP is initiated, a 5-minute window is opened for action to be taken. In other words, if I tell someone Put your hands up or I will kill you, and the person runs away, I have 5 minutes to kill them. If either party fires any shots or re-engages RP (another text or demand), then the 5-minute timer resets.<br/>
			<br/>
			<br/>
			6. If you engage on someone or are engaged upon by someone and either party is wearing gang tags (Ex. [TAP]), then all members wearing tags from both parties are engaged.<br/>
			<br/>
			<br/>
			8. If a player is engaged with an officer, It falls on that officer to inform other officers in the area that a certain player(s) is engaged with the APD. Any interaction is considered engaged until the situation is over. In other words, if you engage with one officer, you are engaged with all officers in the area until the engagement ends.<br/>
			 <br/>
			 <br/>
			9. If a property you own is being broken into, be it house or vehicle it does not initiate roleplay.<br/>
			<br/>
			<br/>
			11. Sirens from an officer initiate RP. This only applies, however, if the sirens are intended for you. (Use good judgement, don't just blast a cop who is pulling over a speeder, etc.)<br/>
			<br/>
			<br/>
			10. Killing players in restraints being held by officers is RDM. EXCEPTION: If the officer(s) disregard the safety of the suspect while another player has engaged RP with the officer, such as standing next to the restrained person(s) while under fire, or escorting them with the result of the suspect being shot in the process with the intent of shooting the officer. This would be the the officer's fault and would not be considered RDM.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"VDM (Vehicular Deathmatch)",
			"
			1. Killing another player by intentionally running them over is considered VDM. Vehicles are NEVER to be used as weapons.<br/>
			<br/>
			2. Ramming player(s) with any slingloaded vehicle is VDM.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Combat Logging",
			"
			1. Logging out of the game with the intention of avoiding consequences, whatever their form, is considered combat logging. Storing things so as to not get caught with them by the APD or another player is also considered combat logging. Killing yourself to escape capture by cops is also considered combat logging (jumping off a building etc.)<br/>
			<br/>
			<br/>
			2. This includes: logging while tazed/restrained, storing vehicles with drugs before they can be searched, storing a vehicle while being pursued by another player, and disconnecting after death to avoid gear loss.<br/>
			<br/>
			<br/>
			3. Combat is defined as shots being fired at you within the last 5 minutes. If you go 5 minutes without being shot at, you are permitted to store your vehicle/log.<br/>
			<br/>
			<br/>
			4. If while attempting to store your vehicle you come under fire again, the 5 minute timer resets and you must wait it out before proceeding further.<br/>
			<br/>
			<br/>
			5. If you are reported for combat storing a vehicle, you will receive a ban and the vehicle will be deleted from your garage.<br/><br/>
			"
		]
	];


	player createDiaryRecord ["serverrules",
		[
			"Aviation",
			"
			Aerial vehicles are a special consideration when involved in initiating RP.<br/>
			<br/>
			<br/>
			1. To initiate RP players must send a text message to the pilot and give a minimum of 10 seconds for the pilot to make adjustments to their flight path. If the pilot is clearly disobeying your demands, RP has been initiated and you may fire upon the helicopter.<br/>
			<br/>
			2. Aerial vehicles may not make contact with each other for any reason. A player may hover over another vehicle for the purpose of preventing takeoff, but may not attempt to disable the trapped vehicle's components. (no rotor-tapping)<br/>
			<br/>
			Aviation Laws:<br/>
			<br/>
			- The Following includes a list of Laws. You will not be banned for disobeying any part of this section -<br/>
			<br/>
			1. The law requires that any aerial vehicle maintains an altitude of at least 200 meters when flying over any major city (Kavala, Athira, Pyrgos, Sofia).<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"In-Game Audio",
			"
			All players are responsible for ensuring their audio settings are set to where they can hear commands and addresses issued in the game.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Exploitation",
			"
			Abusing bugs or game mechanics for personal gain is considered exploitation. This activity is heavily discouraged by the server and every confirmed offense is punishable by a permanent ban. This includes but is not limited to: 1) Replicating items, 2) Glitching restraints to kill someone who has restrained you, 3) Looting a dead body via bug, 4) Getting into/out of a vehicle while restrained unless ordered to do so, 5) Deploying ropes in an enemy helicopter to make it crash, 6) Vigilante exploitation of bounty system, 7) “Super Jumping” to reach inaccessible areas, 8. VDMing someone while tazed, and 9) Continuing to function while tazed/restrained in any way. 10) Any action that an admin deems as an exploit<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Duping/Hacking",
			"
			Duping/hacking are pretty self explanatory. Don’t do them.<br/>
			Replicating gear via logout, murder, sync, or any other form.<br/>
			<br/>
			Anyone found in possession of an item not found in our servers vendors is subject to immediate ban. If you see something you don’t recognize, leave it alone.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Fixed Weapon Vehicles",
			"
			Fixed Weapon Vehicles include: The Armed Offroad and the Ghosthawk.<br/>
			<br/>
			1. Vehicles with fixed weapons are extremely hazardous to players. As such, a vehicle with fixed weapons may be fired upon at any time for any reason without prior warning.<br/>
			<br/>
			2. In instances where a vehicle with a fixed weapon is targeting another vehicle with a fixed weapon, both vehicles are free to fire at any time.<br/>
			<br/>
			3. Be warned, when a vehicle comes under fire due to this rule it is allowed to immediately return fire.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Hostage Rules",
			"
			1. A hostage taker may request up to $25k worth of money, items, or waived charges (Pardon) per hostage. The maximum total is $125k, even if there are more than 5 hostages.<br/>
			<br/>
			2. If the hostage is an officer he should do everything to barter for his life.<br/>
			<br/>
			3. The highest ranking Officer on duty may become a negotiator and reach out by text or voice to the hostage takers seeking their intentions. This officer has the final say on all things regarding the hostage situation. No further action may be taken unless they authorize it.<br/>
			<br/>
			4. The negotiator entering the area must enter unarmed, or at seemingly unarmed, until they return to a vehicle to retrieve their “loadout”. The negotiator must enter and exit a police vehicle in order to use his/her loadout again.<br/>
			<br/>
			5. The negotiator cannot be taken as a new hostage nor may he/she be robbed or killed.<br/>
			<br/>
			6. The negotiator may relay details to fellow officers such as player locations, how many, etc.<br/>
			<br/>
			7. Other officers may enter the hostage area but at risk to the negotiator and hostages. These officers must exercise the utmost caution in preserving life.<br/>
			<br/>
			8. If negotiations cannot be reached it is up to the officer in command to decide to back off or move in. Always try and assess the threat to the hostage and act accordingly. Hostage takers must be notified they are subject to a raid if the officer in command decides to move in.<br/>
			<br/>
			9. If you see or have an opportunity to down and restrain all of the people involved with taking the hostage ,you may do so, but first you must warn the hostage taker of an impending raid, e.g “Sir, just to let you know, I have officers ready to raid if these negotiations go south. All of you may surrender now or they will engage.” The other officers in the area are allowed to engage 5 seconds after the raid is announced if the hostage takers do not surrender. The negotiator must return to his/her vehicle to retrieve his/her “loadout” before personally participating in the raid.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"HQ Takeover",
			"
			An HQ takeover is a scenario where a group of armed individuals attempt to gain and maintain control over an APD HQ.<br/>
			<br/>
			1.During a HQ Takeover, the group declaring the takeover must text police over the Emergency Message system stating 1) That an HQ takeover will occur at a specific HQ 2) the names of all individuals participating 3) When the takeover will occur. (Ex. Kavala HQ will be taken over in 5 minutes by Ethan, Bobey, and Karl!)<br/>
			<br/>
			2. The takeover message must be sent 5 minutes before the takeover begins, 3 minutes before the takeover begins, and when the takeover is live.<br/>
			<br/>
			<br/>
			3. There must be at least 3 members of the APD online at the first announcement of the HQ Takeover.<br/>
			<br/>
			<br/>
			4. During the Takeover, officers are not allowed to respawn in the HQ until all members of the Takeover have been neutralized (restrained or killed).<br/>
			<br/>
			5. A member of the Takeover group must remain inside the HQ at all times or the HQ reverts to Police control.<br/>
			<br/>
			6. Only one takeover may take place at a time.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"NLR (New Life Rule)",
			"
			1. When a civilian dies they are forbidden from entering the area they died in for at least 15 minutes (The Range for NLR is 2km's). EXCEPTIONS: Civilian was a victim of some form of rule breaking i.e. RDM, VDM, or Server error.<br/>
			<br/>
			2. Crashing a vehicle applies NLR.<br/>
			<br/>
			3. If a player is revived by EMS, they are not subject to NLR.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Red Zones  / Illegal Areas / KOS Zones",
			"
			Red Zones are defined as 300m from any Drug Field, Processor, Rebel Outpost, or the Arms Dealer, and also 50m from any Drug Dealer or Turtle Dealer, and 150m from any chop shop. 300m from any ACTIVE Federal Reserve Robbery or Jailbreak is considered a KOS Zone. If you are in any of these areas you should expect a fight.<br/>
 			<br/>
 			<br/>
			2. If a player is physically present in a red zone the following rules are in effect:<br/>
			<br/>
			<br/>
			3. KOS is allowed anywhere within those areas. Do not shoot at people who are clearly outside of the zone.<br/>
			<br/>
			<br/>
			4. EMS may enter red zones and may be interacted with as normal players.<br/>
			<br/>
			<br/>
			5. Officers are still required to roleplay inside red zones. Code 3 (Lights and Sirens) is considered valid initiation of roleplay by the cops as it alert players to their presence provided the Code 3 is used before the police enter the red zone.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Naming Policy",
			"
			1. Names may not contain organizational tags that would interfere with the running of the server. Examples: [AGS], Cadet, Sergeant, [APD], etc.<br/>
			<br/>
			2. Exceptions can be made.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Martial Law",
			"
			Martial Law will be called if the APD loses complete control over an individual city. All civilians that do not want to be shot or detained should leave the city immediately. The purpose of Martial Law is to allow the ASD to re-gain control over the city by any means necessary.<br/>
			<br/>
			1. Martial law may only be declared by a moderator or higher, or a Lieutenant or higher. However, a moderator or admin must be online in order to send the message. Martial law may only be declared if the Police have lost control of a city and reasonable efforts to regain it have failed. During this time the following apply:<br/>
			<br/>
			2. Civs will be warned via Admin message that the city is under Martial Law.<br/>
			<br/>
			<br/>
			3. During this time any civs within the city may be tazed and restrained on sight.<br/>
			<br/>
			<br/>
			4. RP is still required by all civilians.<br/>
			<br/>
			<br/>
			5. When order has been achieved, an Admin will send all civilians a message stating Martial Law is over.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Meta Gaming",
			"
			Meta Gaming is defined as the utilization of information that an in game character would not have access to. Violations of this rule include, but are not limited to the following:<br/>
			<br/>
			Logging from one faction to another (Cop to Civ, EMS to Cop, etc.) for the purpose of using information gained on another faction<br/>
			<br/>
			Utilization of information from a past life<br/>
			<br/>
			Continuing to communicate after your comms and gps have been taken<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Jailbreak Rules",
			"
			1. When the jail is not an active engagement area (via a breakout) it is not a red zone.<br/>
			<br/>
			2. Once an active engagement has begun, the area is considered a red zone. Cops are authorized to taze, restrain, or lethal anyone in the area.<br/>
			<br/>
			3. If you are legally released from jail during this time it is advised that you stand still at your spawn and put your hands up to prevent issues.<br/>
			<br/>
			4. If a civilian is killed in the course of the breakout, be it while getting out of jail or participating in the actual jailbreak, NLR applies and civilian may not return for 15 minutes.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Rebel Equipment",
			"
			Suicide Vests May be used in the following situations:<br/>
			1. HQ Takeover<br/>
			2. Red Zones<br/>
			3. Fed/Jail Break<br/>
			4. If you are engaged by another player first while wearing a suicide vest, you may use a suicide vest on said player or group engaging you. (Only IF another player(s) engages on you first)<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Gas Station and Bank Robberies",
			"
			1. When a gas station robbery is in progress, the location is a Red Zone within 50 meters.<br/>
			<br/>
			<br/>
			2. When the bank of Kavala is being robbed, the are area is a Red Zone within 300 meters.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Vigilante Rules",
			"
			This section includes a full guide on how to play vigilante, along with the rules that must be followed.<br/>
			<br/>
			Vigilantes are normal civilians in the eyes of the police. The only difference is that they are able to send people to jail.<br/>
			<br/>
			Vigis must follow all other civilian laws, or they will face consequences<br/>
			<br/>
			In the eyes of an admin, they are being given special privileges that must not be abused.<br/>
			<br/>
			Vigilantes have the ability to hunt down wanted criminals and send them to jail from any vigilante shop.<br/>
			<br/>
			The wanted list can be accessed by anyone by pressing 1.<br/>
			<br/>
			<br/>
			Rules:<br/>
			<br/>
			1. Vigilantes must ALWAYS properly announce/engage rp before tazing. They must announce the name of the person whom they are attempting to capture, and also state that they are a vigilante. (Ex. Bobey, put your hands up now or be tazed! I am a vigilante and you are under arrest!)<br/>
			<br/>
			2. Vigilantes may engage through Text, however they must give at least 10 seconds before firing (Unless the target is obviously resisting - shooting, running, etc.)<br/>
			<br/>
			3. Vigilantes are no exception to the law and can be arrested for committing crimes.<br/>
			<br/>
			4. Vigilantes must abide by all other server rules.<br/>
			<br/>
			5. Tazing without properly announcing is considered RDM and will be handled as such.<br/>
			<br/>
			6. You are still allowed to break laws and do illegal things while playing as a vigilante, and you will be dealt with like a normal civilian if caught by an officer. You will also have your vigilante license revoked. This DOES NOT mean that you can use the vigilante restraint system to your advantage.<br/>
			<br/>
			7. The vigilante restraint system is much more lenient than normal civilian restraining. You may NEVER restrain someone with this feature for ANY purpose other than being sent to jail legitimately. You may not sell anyone into slavery who is restrained in this way. You may never use this to take hostages. You may never restrain a cop.<br/>
			<br/>
			8. There must be absolutely no Meta-Gaming while playing as a vigilante. Examples include, but are not limited to, placing a friend in jail or any other form of receiving a bounty through illegitimate play.<br/>
			<br/>
			9. Vigilante abuse is subject to an immediate jail sentence of 30 minutes and a week ban for the first offense. Any further offenses will result in a permanent ban.<br/>
			<br/>
			10. You may ONLY send someone to jail who has a bounty above $30,000. (The game won’t let you, but just so you know)<br/>
			<br/>
			11. Vigilantes are monitored by admins more often than normal civilians because it is VERY easy to do something illegitimate. Make sure to always be following these rules.<br/>
			<br/>
			12. A cop may never steal a criminal whom you have obtained legitimately. However, if a cop observes vigi abuse or improper procedure, the officer may take the criminal and possibly action against you.<br/>
			<br/>
			13. Vigilantes may never fight each other over a criminal nor may they steal a criminal from another person.<br/>
			<br/>
			14. Vigilantes do not have to announce if they are inside of a KOS zone (And the person they're after)<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Dealing with Medics",
			"
			1. Medics may not be robbed in any fashion. (Gear, Vehicles, etc.)<br/>
			<br/>
			2. Medics can only be killed if they disobey a demand. (Do not revive, Heal me now, Revive my friend, etc.)<br/>
			<br/>
			3. Medics, however, may be taken hostage and forced to provide medical attention, or ransomed off to the ASD.<br/>
			<br/>
			3. Do not take the same medic hostage over and over again. This is considered having a Pocket-medic<br/>
			<br/>
			4. You have the right to tell a medic whom he can/cannot revive. Medics must value their own lives when reacting to your requests.<br/><br/>
			"
		]
	];


	player createDiaryRecord ["coprules",
		[
			"APD Rules and Procedures",
			"
			The APD Handbook is a complete guide to all APD rules and procedures. The Handbook can be found on our website: archetypegaming.ipbhost.com under the APD Handbook section of the forums, or under the server rules section.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["medrules",
		[
			"EMS Rules and Procedues",
			"
			The Altis Emergency Medical Services/Technician Rule, Regulation, and Procedure Handbook is a complete guide to all Medic rules and procedures. The Handbook can be found on our website: archetypegaming.ipbhost.com under the EMS Handbook section of the forums, or under the server rules section.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				It is against the law to be in posession of the following items:<br/>
				<br/>
				1. Any 5.56 or higher Caliber Weapon along with the Vermin .45 ACP and the four-five pistol.<br/>
				<br/>
				2. Any Supressor (9mm. is the only kind available)<br/>
				<br/>
				3. Cannabis/Marijuana (Unless you have a Medical Marijuana Card!)<br/>
				<br/>
				4. Unprocessed Heroin/Processed Heroin<br/>
				<br/>
				5. Unprocessed Cocaine/Processed Cocaine<br/>
				<br/>
				6. Frogs/Frog LSD (They're an endangered species!!!)<br/>
				<br/>
				7. Meth/Meth Ingredients<br/>
				<br/>
				8. Magic Mushrooms<br/>
				<br/>
				9. Turtle Meat<br/>
				10. Bolt Cutters<br/>
				<br/>
				11. Blasting Charges<br/>
				<br/>
				12. Lockpicks<br/>
				<br/>
				13. Zipties<br/>
				<br/>
				14. Gold Bars<br/><br/>
				"
		]
	];

	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				1. The ifrit<br/>
				2. The Armed Offroad<br/>
				3. Any APD Vehicle<br/><br/>
				"
		]
	];

	/*player createDiaryRecord ["guides",
		[
			"Gang Territories",
				"
				1) You can capture a Gang Territory by having one member of your gang scroll wheel on the Flag Pole in the zone.<br/>
				<br/>
				2) It will take approximately 10 minutes to capture the zone.<br/>
				<br/>
				<br/>
				Benefits:<br/>
				<br/>
				Territory Taxes - Collect the taxes that have been collected within your territory every 30 minutes by scrolling on the tablet next to the flag<br/>
				<br/>
				Each tax payout can earn you between $10k-$35k, so it's worth defending your land.<br/>
				<br/>
				The Arms Dealer Territory will allow you to access a discounted rebel shop by scrolling on the tablet.<br/>
				<br/><br/>
				"
		]
	];*/

	/*player createDiaryRecord ["guides",
		[
			"Apex's Surgical Supplies",
				"
				1) These shops will allow you to purchase a special medical license<br/>
				<br/>
				2) With this medical license you have access to the surgical supply shop<br/>
				<br/>
				3) You can purchase blood bags in these shops. Bloog bags are Y-Menu items that heal you to 100.<br/>
				<br/><br/>
				"
		]
	];*/

	player createDiaryRecord ["guides",
		[
			"Gov HQ",
				"
				1) The Off-Shore Government HQ contains a computer in the top Dome that can be used to Hack a prisoner out of jail.<br/>
				<br/>
				2) The hacking process takes around 10 minutes, and will display a global message upon being started.<br/>
				<br/>
				3) Each prisoner must be hacked out individually.<br/>
				<br/><br/>
				"
		]
	];

	player createDiaryRecord ["guides",
		[
			"Altis Corrections",
				"
				1) Prisoners can be broken out of jail by the Jailbreak Process<br/>
				<br/>
				2) In order to start a jailbreak, one must posess a weapon, a blating charge, and have the means to defend the Jail area from the cops.<br/>
				<br/>
				3) To start it, go into the sliding door area of the dome, and scroll on the computer. The blasting charge will be placed and a 10 minute timer will be started.<br/>
				<br/>
				4) After the bomb goes off, prisoners will be given the option to break out.<br/>
				<br/><br/>
				"
		]
	];

	player createDiaryRecord ["guides",
		[
			"Federal Reserve",
				"
				1) To Rob the Federal Reserve, Use boltcutters on the dome door and the vault-room door. Then, place a blasting charge on the vault.<br/>
				<br/>
				2) After the bomb goes off, grab the gold bars and sell them at either of the two Gold Bar Buyers!<br/>
				<br/><br/>
				"
		]
	];

	player createDiaryRecord ["guides",
		[
			"Gas Stations",
				"
				1) To Rob a gas station, simply take out a gun and scroll on the cash register.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["guides",
		[
			"Banks",
				"
				1) To Rob a bank, scroll on the vault on the top floor of the bank while you have a gun out.<br/><br/>
				"
		]
	];


	player createDiaryRecord ["guides",
		[
			"Lumber",
			"
			1. Lumber is an easy way to make money when you are starting off. Simply gather the lumber from any forest and sell at the wood buyer<br/>
			<br/>
			2. Each piece of lumber takes up 10 weight in your y-inventory, as opposed to 2 for each drug/legal ingredient.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["guides",
		[
			"Crack Cocaine",
			"
			1. Process Cocaine into processed cocaine.<br/>
			<br/>
			2. Turn that processed cocaine into crack at crack processing<br/>
			<br/><br/>
			"
		]
	];

	player createDiaryRecord ["guides",
		[
			"Wine and Grapes",
			"
			1. Grapes can be picked and sold just like Apples and Peaches<br/>
			<br/>
			2. Grapes can also be processed into Wine at any of the three Altis Wine Distilleries and sold to any pub.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["guides",
		[
			"How to Rob Someone",
			"
			1. A person must have his/her hands up in order to be robbed. So, force someone to surrender (TAB) or be killed in order to rob them<br/>
			<br/>
			2. After they surrender, use your windows key (or custom control 10) and select the rob option<br/><br/>
			"
		]
	];

	/*player createDiaryRecord ["guides",
		[
			"How to Rob Someone",
			"
			The Vehicle mod shop is located on the airfield close to the terminal<br/>
			<br/>
			Vehicle mods include: <br/>
			<br/>
			1) Insurance - 3 tiers<br/>
			<br/>
			Tier 1 - Vehicle returns to garage if destroyed without any other mods<br/>
			<br/>
			Tier 2 - Vehicle returns to garage if destroyed with all other mods<br/>
			<br/>
			Tier 3 - Vehicle returns to garage if chopped or destroyed with all other mods<br/>
			<br/>
			<br/>
			2) Increased Trunk Space - 4 tiers - Pretty self-explanitory<br/>
			<br/>
			<br/>
			3) HQ Security - Takes longer to lockpick your car and the % chance of getting keys is reduced<br/>
			<br/>
			<br/>
			4) GPS Tracker - Toggle a GPS tracker on your car by pressing windows key (If you're the owner of the vehicle)<br/><br/>
			"
		]
	];*/

	/*player createDiaryRecord ["guides",
		[
			"Slave Trader",
			"
			How to sell slaves: <br/>
			<br/>
			1) Find someone weaker than you<br/>
			<br/>
			2) Make that person put his/her hands up<br/>
			<br/>
			3) Restrain that person using zipties<br/>
			<br/>
			4) Escort/take that hostage to the Slave Trader (north of wasteland checkpoint at AAC airfield)<br/>
			<br/>
			5) Scroll wheel on your target while inside the zone and sell the hostage<br/>
			<br/>
			6) Repent<br/>
			<br/>
			What to do if you are sold into slavery:<br/>
			<br/>
			1) Cry<br/>
			<br/>
			2) Take $5 out of the atm and scroll on the workbench - purchase a cigarette rolling license<br/>
			<br/>
			3) Press your windows key (or whatever you have custom control 10 set as) and gather tobacco<br/>
			<br/>
			4) Process the tobacco into cigarettes<br/>
			<br/>
			5) Once you have 23 cigarettes, scroll on the npc and select Get me out of here!<br/>
			<br/>
			6) Celebrate your freedom<br/>
			<br/>
			Benefits for the person who sells the slave:<br/>
			<br/>
			1) $20,000 per slave<br/>
			<br/>
			2) A criminal record<br/>
			<br/>
			3) A bigger ego<br/>
			<br/>
			Benefits for the person who is sold into slavery:<br/>
			<br/>
			1) You will keep any gear - so it is better to be sold into slavery and spend 5 minutes rolling cigarettes than to have to purchase all your gear again.<br/>
			<br/>
			2) You are now a talented cigarette-roller!<br/>
			<br/>
			Restrictions (These are automatic):<br/>
			<br/>
			1) You can only be sold into slavery once every 30 minutes<br/>
			<br/>
			2) You can only sell a slave once every 30 minutes<br/>
			<br/>
			Rules:<br/>
			<br/>
			1) There may be absolutely no Meta-Gaming involved in slave trading.<br/>
			<br/>
			EX: Selling a friend repeatedly or any similar action<br/><br/>
			"
		]
	];*/



	player createDiaryRecord ["prices",
		[
			"License Prices",
			"
			Legal: <br/>
			<br/>
			All Legal Processing licenses cost $3,500<br/>
			<br/>
			<br/>
			Illegal:<br/>
			<br/>
			Marijuana - $6,000<br/>
			<br/>
			Heroin - $7,000<br/>
			<br/>
			Cocaine - $8,000<br/>
			<br/>
			Magic Mushroom - $9,000<br/>
			<br/>
			Frog LSD - $9,500<br/>
			<br/>
			Meth - $10,000<br/>
			<br/>
			Crack - $15,000
			<br/>
			<br/>
			Additional Licenses:<br/>
			<br/>
			Rebel Training - $50,000<br/>
			<br/>
			Vigilante - $40,000<br/>
			<br/>
			Lawyer - $50,000<br/>
			<br/><br/>
			"
		]
	];

	/*player createDiaryRecord ["vic",
		[
			"Cargo",
			"
			The Vehicle Cargo store is located south of Kavala<br/>
			<br/>
			A Vehicle Cargo Permit (license to use the shop) is required, and can be purchased for $50,000<br/>
			<br/>
			Inside the shop you can purchase a cargo box<br/>
			<br/>
			Cargo Boxes, once purchased, can be Used within the Y-menu, and a red crate will appear in front of you<br/>
			<br/>
			Each crate has a trunk with 200 Y-menu weight worth of storage.<br/>
			<br/>
			The trunk can be accessed using T<br/>
			<br/>
			Now for the fun stuff......<br/>
			<br/>
			1) Get either an Offroad, Truck Boxer, Truck, Hemmt, Tempest, Zamak, or Mohawk, and put the rear end on the crate<br/>
			<br/>
			2) Either from the outside near the trunk, or from the driver seat, select the Load into Vehicle Option<br/>
			<br/>
			3) Some magic will happen and the crate will now be in your vehicle<br/>
			<br/>
			4) Go to the field of your choice and unload the crate (same process as loading in)<br/>
			<br/>
			5) Gather and put the items in the trunk<br/>
			<br/>
			6) Load the crate back in and move to the processor - process and load back in<br/>
			<br/>
			7) Unload at the drug dealer (or the correct vendor for whatever you're selling) and sell the items<br/>
			<br/>
			8) Now that the crate is empty, use your windows key (or whatever you have custom control 10 set as) and Pack Up the box<br/>
			<br/>
			9) This will take about 30 seconds to prevent combat logging of the items/crate<br/>
			<br/>
			10) The crate will now appear within you Y-menu again, and can be used as many times as you desire<br/>
			<br/>
			<br/>
			Things to Note:<br/>
			<br/>
			1) Never Pack Up if you have items inside the crate - You will lose them!!<br/>
			<br/>
			2) 3 Crates can be put in a mohawk, and there is a parachute option for the crates if your altitude is above 150m<br/>
			<br/>
			3) 1 Crate can be put in an offroad, 3 in a hemmt box, not sure about the other vehicles...<br/>
			<br/>
			<br/><br/>
			"
		]
	];*/

// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				1: Open Wanted List (Cop and Civ)<br/>
				2: Open Cell Phone<br/>
				3: Open Market<br/>
				<br/>
				Y: Open Player Menu<br/>
				U: Lock and Unlock Car/House Doors<br/>
				F: Cop/Medic Car Siren<br/>
				H: Holster/Un-Holster Weapon<br/>
				T: Vehicle Trunk<br/>
				O: Open Bar Gate (Checkpoints, HQs, etc)<br/>
				Tab: Surrender (Hands Up)<br/>
				<br/>
				CTRL + T: Aim at a target and press this to send your target a text message<br/>
				Left Shift + R: Restrain (Cop Only & Vigilante)<br/>
				Left Shift + F: Yelp Siren (Cop)<br/>
				Left Shift + L: Activates cop/medic siren lights<br/>
				<br/>
				Custom Controls 11: Redgull Hotkey (Consumes a Redgull if you have one in your inventory)<br/>
				Custom Controls 12: Ear Plugs<br/>
				<br/>
				Left Windows Key: Main Interaction key which is used for picking up items/money, gathering, interacting with cars (repair,etc) and for cops to interact with civilians. Can be rebound to a single key like H by pressing ESC->Configure->Controls->Custom->Use Action 10<br/><br/>
				"
		]
	];
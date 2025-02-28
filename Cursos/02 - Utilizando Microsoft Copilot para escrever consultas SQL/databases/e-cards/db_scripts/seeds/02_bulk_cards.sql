USE pokemon_tcg;

INSERT INTO tbl_cards (hp, name, typeId, stageId, info, attack, dammage, weak, ressis, retreat, cardNumberInCollection, collectionSetId)
VALUES
(60, 'Squirtle', 3, 1, 'After birth, its back swells and hardens into a shell. It powerfully sprays foam from its mouth.', 'Bubble', '20', 'Electric', '', '1', 7, 1),
(80, 'Wartortle', 3, 2, 'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.', 'Water Gun', '40', 'Electric', '', '2', 8, 1),
(100, 'Blastoise', 3, 3, 'A brutal Pokémon with pressurized water jets on its shell. They are used for high-speed tackles.', 'Hydro Pump', '60', 'Electric', '', '3', 9, 1),
(50, 'Pikachu', 4, 1, 'When several of these Pokémon gather, their electricity could build and cause lightning storms.', 'Thunder Shock', '30', 'Ground', '', '1', 10, 1),
(90, 'Raichu', 4, 2, 'Its long tail serves as a ground to protect itself from its own high-voltage power.', 'Thunderbolt', '50', 'Ground', '', '2', 11, 1),
(100, 'Jigglypuff', 5, 1, 'When it wavers its big, round eyes, it begins singing a lullaby that makes everyone drowsy.', 'Pound', '20', 'Steel', '', '1', 12, 1),
(120, 'Wigglytuff', 5, 2, 'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.', 'Body Slam', '40', 'Steel', '', '3', 13, 1),
(70, 'Meowth', 6, 1, 'Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.', 'Scratch', '10', 'Fighting', '', '1', 14, 1),
(90, 'Persian', 6, 2, 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.', 'Bite', '20', 'Fighting', '', '2', 15, 1),
(60, 'Eevee', 7, 1, 'Its genetic code is irregular. It may mutate if it is exposed to radiation from element stones.', 'Quick Attack', '10', 'Fighting', '', '1', 16, 1),
(80, 'Vaporeon', 3, 2, 'Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid’s.', 'Water Pulse', '30', 'Electric', '', '2', 17, 1),
(80, 'Jolteon', 4, 2, 'It accumulates negative ions in the atmosphere to blast out 10000-volt lightning bolts.', 'Thunderbolt', '40', 'Ground', '', '2', 18, 1),
(80, 'Flareon', 2, 2, 'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.', 'Flamethrower', '40', 'Water', '', '2', 19, 1),
(100, 'Lapras', 3, 1, 'A Pokémon that has been overhunted almost to extinction. It can ferry people across the water.', 'Ice Beam', '30', 'Electric', '', '3', 20, 1);
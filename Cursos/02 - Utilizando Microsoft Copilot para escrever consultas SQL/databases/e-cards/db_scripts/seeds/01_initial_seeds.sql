USE pokemon_tcg;

-- tbl_collections
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES 
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- tbl_types
INSERT INTO tbl_types (typeName)
VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Darkness'),
('Metal'),
('Fairy'),
('Dragon'),
('Colorless');

-- tbl_stages
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2');

-- tbl_cards
INSERT INTO tbl_cards (hp, name, typeId, stageId, info, attack, dammage, weak, ressis, retreat, cardNumberInCollection, collectionSetId)
VALUES
(60, 'Bulbasaur', 1, 1, 'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.', 'Vine Whip', '10', 'Fire', '', '1', 1, 1),
(80, 'Ivysaur', 1, 2, 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.', 'Razor Leaf', '30', 'Fire', '', '2', 2, 1),
(100, 'Venusaur', 1, 3, 'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.', 'Solar Beam', '60', 'Fire', '', '4', 3, 1),
(50, 'Charmander', 2, 1, 'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.', 'Ember', '30', 'Water', '', '1', 4, 1),
(90, 'Charmeleon', 2, 2, 'When it swings its burning tail, it elevates the temperature to unbearably high levels.', 'Flamethrower', '50', 'Water', '', '3', 5, 1),
(120, 'Charizard', 2, 3, 'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.', 'Fire Spin', '100', 'Water', '', '3', 6, 1);
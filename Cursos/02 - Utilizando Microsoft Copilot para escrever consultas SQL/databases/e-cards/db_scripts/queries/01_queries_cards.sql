-- Inner Join com filtro
SELECT c.name, t.typeName
FROM tbl_cards c
INNER JOIN tbl_types t ON c.typeId = t.id
WHERE t.typeName = 'Fire';

-- Inner Join e Ordenação
SELECT c.name, col.collectionSetName
FROM tbl_cards c
INNER JOIN tbl_collections col ON c.collectionSetId = col.id
ORDER BY col.releaseDate DESC;

-- Subquery em SELECT
SELECT c.name, 
       (SELECT t.typeName FROM tbl_types t WHERE t.id = c.typeId) AS typeName
FROM tbl_cards c;

-- Subquery com WHERE
SELECT name, hp
FROM tbl_cards
WHERE hp > (SELECT AVG(hp) FROM tbl_cards);

-- Group By e Contagem
SELECT col.collectionSetName, COUNT(*) AS totalCards
FROM tbl_cards c
INNER JOIN tbl_collections col ON c.collectionSetId = col.id
GROUP BY col.collectionSetName;

-- Having com filtro em Group By
SELECT col.collectionSetName, COUNT(*) AS totalCards
FROM tbl_cards c
INNER JOIN tbl_collections col ON c.collectionSetId = col.id
GROUP BY col.collectionSetName
HAVING COUNT(*) > 10;

-- Inner Join com múltiplas tabelas
SELECT c.name, t.typeName, s.stageName
FROM tbl_cards c
INNER JOIN tbl_types t ON c.typeId = t.id
INNER JOIN tbl_stages s ON c.stageId = s.id;

-- Subquery em FROM
SELECT name, hp
FROM (SELECT name, hp FROM tbl_cards) AS subquery
WHERE subquery.hp > 50;

-- Count em Subquery
SELECT col.collectionSetName, 
       (SELECT COUNT(*) FROM tbl_cards c WHERE c.collectionSetId = col.id) AS totalCards
FROM tbl_collections col;

-- Join e Ordenação por múltiplos campos
SELECT c.name, col.collectionSetName, t.typeName
FROM tbl_cards c
INNER JOIN tbl_collections col ON c.collectionSetId = col.id
INNER JOIN tbl_types t ON c.typeId = t.id
ORDER BY col.collectionSetName, t.typeName;

-- Group By com Subquery
SELECT typeName, AVG(hp) AS avg_hp
FROM (SELECT t.typeName, c.hp FROM tbl_cards c INNER JOIN tbl_types t ON c.typeId = t.id) AS subquery
GROUP BY typeName;

-- Inner Join com Filtro e Ordenação
SELECT c.name, s.stageName
FROM tbl_cards c
INNER JOIN tbl_stages s ON c.stageId = s.id
WHERE s.stageName = 'Basic'
ORDER BY c.name;

-- Having com condição complexa
SELECT t.typeName, AVG(c.hp) AS avg_hp
FROM tbl_cards c
INNER JOIN tbl_types t ON c.typeId = t.id
GROUP BY t.typeName
HAVING AVG(c.hp) > 70;

-- Subquery em SELECT com Join
SELECT c.name, 
       (SELECT col.collectionSetName FROM tbl_collections col WHERE col.id = c.collectionSetId) AS collectionName
FROM tbl_cards c
INNER JOIN tbl_types t ON c.typeId = t.id;

-- Inner Join e Subquery em WHERE
SELECT c.name, t.typeName
FROM tbl_cards c
INNER JOIN tbl_types t ON c.typeId = t.id
WHERE c.hp = (SELECT MAX(hp) FROM tbl_cards);
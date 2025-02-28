USE pokemon_tcg;

-- View
CREATE VIEW vw_cards_info AS
SELECT 
    c.id,
    c.hp,
    c.name,
    t.typeName AS typeName,
    s.stageName AS stageName,
    c.info,
    c.attack,
    c.dammage,
    c.weak,
    c.ressis,
    c.retreat,
    c.cardNumberInCollection,
    col.collectionSetName AS collectionSetName,
    col.releaseDate,
    col.totalCardsInCollection
FROM 
    tbl_cards c
JOIN 
    tbl_types t ON c.typeId = t.id
JOIN 
    tbl_stages s ON c.stageId = s.id
JOIN 
    tbl_collections col ON c.collectionSetId = col.id;
    
-- SELECT View
SELECT
    id,
    hp,
    name,
    typeName,
    stageName,
    info,
    attack,
    dammage,
    weak,
    ressis,
    retreat,
    cardNumberInCollection,
    collectionSetName,
    releaseDate,
    totalCardsInCollection
FROM 
    vw_cards_info;

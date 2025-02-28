CREATE DATABASE pokemon_tcg;

USE pokemon_tcg;

CREATE TABLE tbl_collections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE,
    totalCardsInCollection INT
);

CREATE TABLE tbl_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    typeName VARCHAR(20) NOT NULL
);

CREATE TABLE tbl_stages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    stageName VARCHAR(20) NOT NULL
);

CREATE TABLE tbl_cards (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hp INT,
    name VARCHAR(50) NOT NULL,
    typeId INT,
    stageId INT,
    info TEXT,
    attack VARCHAR(100),
    dammage VARCHAR(20),
    weak VARCHAR(20),
    ressis VARCHAR(20),
    retreat VARCHAR(20),
    cardNumberInCollection INT,
    collectionSetId INT,
    FOREIGN KEY (collectionSetId) REFERENCES tbl_collections(id),
    FOREIGN KEY (typeId) REFERENCES tbl_types(id),
    FOREIGN KEY (stageId) REFERENCES tbl_stages(id)
);

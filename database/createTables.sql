USE ECOLOGICAL_DATA;

CREATE TABLE RESEARCHER (
    ORCID INT UNSIGNED AUTO_INCREMENT NOT NULL,                 -- Unsigned to prevent negative numbers
    Name VARCHAR(20) NOT NULL,                                  -- Researcher's name
    Field VARCHAR(20) NOT NULL,                                 -- Field of study
    PRIMARY KEY(ORCID),                                         -- Set ORCID as primary
    UNIQUE (Name, Field)                                        -- Prevent accidental duplicate entries
);

CREATE TABLE SPECIES (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT,                    -- Unique species ID
    ScientificName VARCHAR(50) NOT NULL,                        -- Scientific name of species
    ResearcherID INT UNSIGNED,                                  -- ORCID of researcher studying species
    PRIMARY KEY(ID),                                            -- Make ID primary key
    FOREIGN KEY(ResearcherID) REFERENCES RESEARCHER(ORCID),     -- Take ORCID from RESEARCHER table as foreign key
    UNIQUE (ScientificName)                                     -- Prevent accidental duplicate entries
);

CREATE TABLE DIET ( 
    SpeciesID INT UNSIGNED NOT NULL,                            -- ID of the species in question
    Diet VARCHAR(20) NOT NULL,                                  -- Type of diet (Herbivore, Insectivore etc)
    PRIMARY KEY(SpeciesID, Diet),                               -- Set SpeciesID and Diet as composite primary key
    FOREIGN KEY(SpeciesID) REFERENCES SPECIES(ID)               -- Take SpeciesID from SPECIES table as foreign key
);

CREATE TABLE COMMON_NAME (
    SpeciesID INT UNSIGNED NOT NULL,                            -- ID of the species in question
    commonName VARCHAR(50) NOT NULL,                            -- Common name of the species
    PRIMARY KEY(SpeciesID, commonName),                         -- Set SpeciesID and common name as composite primary key
    FOREIGN KEY(SpeciesID) REFERENCES SPECIES(ID)               -- Take SpeciesID from SPECIES table as foreign key
);

CREATE TABLE ECOSYSTEM (
    AreaCode VARCHAR(6) NOT NULL,                                                   -- Short distinguishing area code
    AreaKM INT UNSIGNED NOT NULL,                                                   -- Area in Km ^2
    Location VARCHAR(20) NOT NULL,                                                  -- Location of Ecosystem
    Climate ENUM('Tropical', 'Arid', 'Temperate', 'Continental', 'Polar') NOT NULL, -- Climate type
    Name VARCHAR(20) NOT NULL,                                                      -- Name of Ecosystem
    KeystoneID INT UNSIGNED NOT NULL,                                               -- Keystone Species Id
    PRIMARY KEY(AreaCode),                                                          -- Make AreaCode the primary key
    FOREIGN KEY(KeystoneID) REFERENCES SPECIES(ID)                                  -- Take keystone ID from SPECIES table as a foreign key
);

CREATE TABLE STUDENT (
    ORCID INT UNSIGNED NOT NULL,                                -- Researcher's ORCID
    Name VARCHAR(20) NOT NULL,                                  -- Student name
    Course VARCHAR(20) NOT NULL,                                -- Name of course
    Year INT NOT NULL CHECK (Year BETWEEN 1 AND 5),             -- Year of course, limited between indicated years
    PRIMARY KEY(ORCID, Name),                                   -- Take researcher's ORCID and student name as a composite primary key
    FOREIGN KEY(ORCID) REFERENCES RESEARCHER(ORCID)             -- Researcher's ORCID taken as a foreign key
);

CREATE TABLE INTERACTS_WITH (
    SpeciesID1 INT UNSIGNED NOT NULL,                                                                               -- ID of one species
    SpeciesID2 INT UNSIGNED NOT NULL,                                                                               -- ID of the other species
    CHECK (SpeciesID1 <> SpeciesID2),                                                                               -- Species can't interact with itself
    Interaction ENUM('Predation', 'Parasitism', 'Symbiosis', 'Commensalism', 'Mutualism', 'Competition') NOT NULL,  -- Interaction type
    PRIMARY KEY(SpeciesID1, SpeciesID2),                                                                            -- Composite primary key from foreign keys
    FOREIGN KEY(SpeciesID1) REFERENCES SPECIES(ID),                                                                 -- Take as foreign key
    FOREIGN KEY(SpeciesID2) REFERENCES SPECIES(ID)                                                                  -- Take as foreign key
);

CREATE TABLE LIVES_IN (
    SpeciesID INT UNSIGNED NOT NULL,                            -- ID of species in question
    AreaCode VARCHAR(6) NOT NULL,                               -- Area code of ecosystem
    PRIMARY KEY(SpeciesID, AreaCode),                           -- Composite primary key of two foreign keys
    FOREIGN KEY(SpeciesID) REFERENCES SPECIES(ID),              -- Take as foreign key
    FOREIGN KEY(AreaCode) REFERENCES ECOSYSTEM(AreaCode)        -- Take as foreign key
);
CREATE DATABASE ECOLOGICAL_DATA;
USE ECOLOGICAL_DATA;

# Prevents deletion of 
DELIMITER //
CREATE TRIGGER no_orphan_student
BEFORE DELETE ON RESEARCHER
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 FROM STUDENT
        WHERE ORCID = OLD.ORCID
    )
    OR EXISTS (
        SELECT 1 FROM SPECIES
        WHERE ResearcherID = OLD.ORCID
    )
    THEN 
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete researcher while supervised student or studied species still exists';
    END IF;
END; //
DELIMITER ;

# Automatically inserts keystone species into lives_in table for the ecosystem
# preventing cases where the keystone species is not marked as living there.
DELIMITER //
CREATE TRIGGER keystone_lives_there
AFTER INSERT ON ECOSYSTEM
FOR EACH ROW
BEGIN
    INSERT INTO LIVES_IN VALUES (NEW.KeystoneID, NEW.AreaCode);
END; //
DELIMITER ;

# Be sure to create the tables with createTables.sql and
# insert all data from insertData.sql before this

# Testing the trigger - Check Amanita Muscaria ecosystem
SELECT SPECIES.ID, SPECIES.ScientificName, LIVES_IN.AreaCode
FROM SPECIES
INNER JOIN LIVES_IN
ON SPECIES.ID = LIVES_IN.SpeciesID
WHERE SPECIES.ID = 11
ORDER BY SPECIES.ID ASC;

# Insert new test ecosystem with Amanita Muscaria as keystone
INSERT INTO ECOSYSTEM VALUES ('EU092', 1000, 'Germany', 'Temperate', 'Mixed Forest', 11);

# Check Amanita Muscaria ecosystem again
SELECT SPECIES.ID, SPECIES.ScientificName, LIVES_IN.AreaCode
FROM SPECIES
INNER JOIN LIVES_IN
ON SPECIES.ID = LIVES_IN.SpeciesID
WHERE SPECIES.ID = 11
ORDER BY SPECIES.ID ASC;

# Remove test ecosystem
DELETE FROM LIVES_IN WHERE AreaCode = 'EU092';
DELETE FROM ECOSYSTEM WHERE AreaCode = 'EU092';
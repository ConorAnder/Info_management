USE ECOLOGICAL_DATA

# Researchers - Auto increment takes care of the ORCID
INSERT INTO RESEARCHER VALUES ('Harold Stewart', 'Botany');    -- 1
INSERT INTO RESEARCHER VALUES ('Jesse Mckee', 'Zoology');       -- 2
INSERT INTO RESEARCHER VALUES ('Chloe Smith', 'Ecology');       -- 3
INSERT INTO RESEARCHER VALUES ('David Lee', 'Marine Biology');  -- 4
INSERT INTO RESEARCHER VALUES ('Eva Nolan', 'Entomology');      -- 5
INSERT INTO RESEARCHER VALUES ('Frank Doyle', 'Mycology');      -- 6
INSERT INTO RESEARCHER VALUES ('Grace Ward', 'Conservation');   -- 7
INSERT INTO RESEARCHER VALUES ('Hannah Reid', 'Ornithology');   -- 8
INSERT INTO RESEARCHER VALUES ('Ian Burke', 'Herpetology');     -- 9
INSERT INTO RESEARCHER VALUES ('Julia Chan', 'Forestry');       -- 10

# Species
INSERT INTO SPECIES VALUES ('Rosa Persica', 1);
INSERT INTO SPECIES VALUES ('Tulipa Gesneriana', 1);
INSERT INTO SPECIES VALUES ('Panthera Leo', 2);
INSERT INTO SPECIES VALUES ('Elephas Maximus', 2);
INSERT INTO SPECIES VALUES ('Canis Lupus', 3);
INSERT INTO SPECIES VALUES ('Vulpes Vulpes', 3);
INSERT INTO SPECIES VALUES ('Delphinus Delphis', 4);
INSERT INTO SPECIES VALUES ('Salmo Salar', 4);
INSERT INTO SPECIES VALUES ('Apis Mellifera', 5);
INSERT INTO SPECIES VALUES ('Formica Rufa', 5);
INSERT INTO SPECIES VALUES ('Amanita Muscaria', 6);
INSERT INTO SPECIES VALUES ('Boletus Edulis', 6);
INSERT INTO SPECIES VALUES ('Gorilla Gorilla', 7);              -- Yes it is Gorilla Gorilla, There is also Gorilla Gorilla Gorilla!
INSERT INTO SPECIES VALUES ('Pongo Pygmaeus', 7);
INSERT INTO SPECIES VALUES ('Tyto Alba', 8);
INSERT INTO SPECIES VALUES ('Falco Peregrinus', 8);
INSERT INTO SPECIES VALUES ('Crocodilus Niloticus', 9);
INSERT INTO SPECIES VALUES ('Chelonoidis Niger', 9);
INSERT INTO SPECIES VALUES ('Taxus Baccata', 10);
INSERT INTO SPECIES VALUES ('Fraxinus Excelsior', 10);

# Diet - Multiple values can be assigned to each species
INSERT INTO DIET VALUES (1, 'Producer');
INSERT INTO DIET VALUES (2, 'Producer');
INSERT INTO DIET VALUES (3, 'Carnivore');
INSERT INTO DIET VALUES (3, 'Piscivore');
INSERT INTO DIET VALUES (4, 'Herbivore');
INSERT INTO DIET VALUES (4, 'Frugivore');
INSERT INTO DIET VALUES (5, 'Carnivore');
INSERT INTO DIET VALUES (5, 'Piscivore');
INSERT INTO DIET VALUES (5, 'Omnivore');
INSERT INTO DIET VALUES (5, 'Insectivore');
INSERT INTO DIET VALUES (7, 'Piscivore');
INSERT INTO DIET VALUES (8, 'Piscivore');
INSERT INTO DIET VALUES (9, 'Palynivore');
INSERT INTO DIET VALUES (10, 'Insectivore');
INSERT INTO DIET VALUES (11, 'Saprotroph');
INSERT INTO DIET VALUES (12, 'Saprotroph');
INSERT INTO DIET VALUES (13, 'Omnivore');
INSERT INTO DIET VALUES (13, 'Frugivore');
INSERT INTO DIET VALUES (14, 'Omnivore');
INSERT INTO DIET VALUES (14, 'Insectivore');
INSERT INTO DIET VALUES (15, 'Carnivore');
INSERT INTO DIET VALUES (16, 'Carnivore');
INSERT INTO DIET VALUES (17, 'Carnivore');
INSERT INTO DIET VALUES (17, 'Piscivore');

INSERT INTO DIET VALUES (18, 'Herbivore');
INSERT INTO DIET VALUES (19 'Producer');
INSERT INTO DIET VALUES (20, 'Producer');
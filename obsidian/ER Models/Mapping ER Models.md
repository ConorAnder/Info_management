7 step plan to map ER models to a schema. 

1. [Regular Entities](Mapping%20ER%20Models#Regular%20Entities)
2. [Weak Entities](Mapping%20ER%20Models#Weak%20Entities)
3. [Binary 1:1 Relations](Mapping%20ER%20Models#1-1%20Binary%20Relations)
4. Binary 1:N Relations
5. Binary N:M Relations
6. Multivalued Attributes
7. N-ary Relations

Plus two more for [[EER Model]]s:

8. Specialisations
9. Union Types

## Regular Entities

Create tables for all regular, non weak entities and attach only the simple, atomic attributes. Be sure decide and include which attribute(s) will become the primary key.

If there are composite keys with atomic attributes, take just the atomic attributes of the composite attribute as attributes of the table.

**DO NOT** add foreign key or relationship attributes.
## Weak Entities

Add weak entity types and their atomic attributes.

Same as previous step except be sure to add primary key of the parent entity as well as another to form a composite primary key.

## 1:1 Binary Relations

There are three strategies to choose from:

1. Pick one entity (the one with full participation) and add a foreign key to the other entity. (One Total)
2. Merge entity types to a single table and add all attributes. (Both Total)
3. Set up a third table with primary keys as foreign keys to cross reference.

## 1:N Binary Relations

Same as option 1 above.

Pick the entity with the N cardinality and add a foreign key to the entity with the 1 cardinality. Also add any simple attributes of the relation.

## N:M Binary Relations

Same as option 3 in [1:1](Mapping%20ER%20Models#1:1%20Binary%20Relations).

Create a third table and include the primary keys of both entities as foreign keys for cross referencing. Include any simple attributes for the relation here.

## Multi-Valued Attributes

Create a new table for each multi-valued attribute and include the primary key of the entity to which it belongs as a foreign key as well as the attribute itself as a simple attribute.

These two make the composite key of the table.

## N-ary Relations

For each relation, make a table as in option 3 in 1:1 and include the primary keys of all entities involved in the relation and include any simple attributes belonging to the relation.

## Specialisations

Four options:

1. Create a table for each subclass and superclass and add the primary key of the superclass to which each subclass belongs as a foreign key. 
2. Create a table for each subclass but not the superclass and add the attributes of the superclass to each new table.
3. Merge all subclasses and superclass into one table and add a 'Type' attribute.
4. Merge all subclasses and superclass into one table and add a 'Type' Boolean attribute for each specialisation.

Option 1 works for any situation.

2 is used when there are total, disjointed subclasses.

3 is used for disjointed subclasses.

4 is used for overlapping subclasses.

## Union Types

Create a table for the union subclass and create an entirely new primary key called a surrogate key.

Insert the surrogate key as a foreign key in each of the superclass tables.

If the superclasses already have the same key, there is no need for a surrogate. Use the primary key instead.
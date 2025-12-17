The process of decomposing unsatisfactory "bad" relations by breaking up their attributes into smaller relations.

Normalization is carried out in practice so that the resulting designs are of high quality and meet the desirable properties.

An unsatisfactory relation schema that does not meet the condition for a normal form—the normal form test —is decomposed into smaller relation schemas that contain a subset of the attributes and meet the test that was otherwise not met by the original relation.

## First Normal Form

The domain of an attribute must include only atomic (simple, indivisible) values and that the value of any attribute in a tuple must be a single value from the domain of that attribute.

That is, it disallows:
* composite attributes 
* multivalued attributes  
* nested relations; attributes whose values for an individual tuple are non-atomic

If you find a composite attribute as a single attribute in a table, the standard way to normalise it is the same as step 6 in [[Mapping ER Models]].

Make a new table for the composite attribute and use the primary key of the original table as a foreign key. The new primary key is a combination of the foreign key and the attribute in question.

The same goes for multi-valued attributes.

## Second Normal Form

A relation schema R is in second normal form (2NF) if every non-prime attribute A in R is fully functionally dependent on the primary key.

Every non-prime attribute must be reliant on the primary key in its entirety. If a non-prime attribute can be identified by a smaller subsection of prime attributes, the schema is not in second normal form. E.g. if the primary key is SSN and DNumber and name can be uniquely identified with (is functionally dependent on) just SSN.

There is no need to check for this if the primary key is composed of only one attribute.

To normalise this, split the table into the number of tables needed to ensure each attribute is functionally dependent on the minimum number of primary attributes.

## Third Normal Form

The transitive functional dependency.

A relation schema R is in third normal form (3NF) if it is in 2NF and no non-prime attribute A in R is transitively dependent on the primary key.

That means that you cannot have a non-prime attribute dependant on another non-prime attribute just because it is dependant on the primary key. You cannot chain the dependency like this.

To fix this, take all of the attributes dependant on the transitive attribute as well as the transitive attribute itself and create a new table with them making the transitive attribute the new primary key.


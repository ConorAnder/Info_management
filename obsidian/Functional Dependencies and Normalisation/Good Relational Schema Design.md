A relational database schema consists of a number of relation schemas where each relation schema consists of a number of attributes.

The grouping of attributes into relation schema is done either by:  
* The common sense of the database designer 
* or by mapping a database schema design from a conceptual data model such as the ER or enhanced-ER (EER) data model.

Using an ER/EER approach leads to a natural and logical grouping of attributes into relations.

However, we still need some formal way of analysing why one grouping of attributes into a relationship schema may be better than another.

The implicit goals of the design activity are:  
* Information preservation (maintaining all concepts attributes, entities, relations etc)
* and minimum redundancy (minimum storage possible).

## Guideline 1

Informally, each tuple in a relation should represent one entity or relationship instance.

* Attributes of different entities (EMPLOYEEs, DEPARTMENTs, PROJECTs) should not be mixed in the same relation 
* Only foreign keys should be used to refer to other entities. 
* Entity and relationship attributes should be kept apart as much as possible.

## Guideline 2

* Design a schema that does not suffer from the insertion, deletion and modification anomalies. 
* If there are any anomalies present, then note them so that applications can be made to take them into account.

In general, it is advisable to use anomaly-free base relations and to specify views that include the joins for placing together the attributes frequently referenced in important queries.

## Guideline 3

* Relations should be designed such that their tuples will have as few NULL values as possible 
* Attributes that are NULL frequently could be placed in separate relations (with the primary key).

## Guideline 4

* Design relation schemas so that they can be joined with equality conditions on attributes that are appropriately related (primary key, foreign key) pairs in a way that guarantees that no spurious tuples are generated. 
* Avoid relations that contain matching attributes that are not (foreign key, primary key) combinations because joining on such attributes may produce spurious tuples.


The strategy for achieving a good design is to iteratively decompose a badly designed relation appropriately, this process is known as [[Normalisation]].
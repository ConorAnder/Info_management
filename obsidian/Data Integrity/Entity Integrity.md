Each row in a table must be uniquely identifiable by a primary key.

Guarantees that every entity (record) is uniquely addressable, this prevents data ambiguity and record loss.

What happens if we try to insert a new item with the same primary key as an existing item?

Result: Error Code: 1062. Duplicate entry ’17’ for key ’item.PRIMARY’

Constraints (Primary, not null etc.)
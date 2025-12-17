A functional dependency is a constraint between two sets of [[Attribute]]s from the database.

A set of attributes X functionally determines a set of attributes Y if the value of X determines a unique value for Y.

The constraint is that: for any two tuples t1 and t2 in r that have t1\[X]= t2\[X], they must also have t1\[Y] = t2\[Y].

## Examples

* Social security number determines employee name 
	* SSN $\rightarrow$ ENAME 
* Project number determines project name and location 
	* PNUMBER $\rightarrow$ {PNAME, PLOCATION} 
* Employee SSN and project number determines the hours per week that the employee works on the project 
	* {SSN, PNUMBER} $\rightarrow$ HOURS

Note that in order to define the FDs, we need to understand the meaning of the attributes involved and the relationship between them.

When doing the questions remember that every input has to have **ONE** output. The same output can be reused for multiple inputs but the output cannot be different for the same input. 
Attributes are properties used to describe an [[Entity]].  

* E.g. an EMPLOYEE entity may have the attributes Name, SSN, Address, and so on.

## Simple / Atomic Attributes

Each [[Entity]] has a single atomic value for the attribute.

Enclosed in ovals and connected to the [[Entity]] by a single line.

## Composite Attributes

An attribute which is itself composed of several components.

* Name: First, Middle, Last

The value of a composite attribute is the concatenation of the values of its component simple attributes.

## Multi-Valued Attributes

An attribute which contains multiple values. 

* E.g. Common names of various species.

Represented by a double lined oval.

## Derived Attributes

Attributes which are calculated or derived from other attributes or [entities](Entity).

* Age: Count years from birth date

Represented by a dotted oval.

## Key Attributes

An [[Entity]] type usually has one or more attributes whose values are distinct for each individual [[Entity]] in the [[Entity]] set.

This attribute is known as the key attribute and is used to distinguish each instance of an attribute from the others.

Represented by underlining the name in the attribute.
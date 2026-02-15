/*
A quartic function is defined:

f(x) = ax4+bx3+cx2+dx+e

Let's define the constant parameters:

a = 3
b = 5
c = 0.9
d = 2.2
e = 1

Fetch the ids and the quartic function where x is the id, and rename the column to quartic

Don't use built-in functions like POWER()!
*/
SELECT id,
(3*(id*id*id*id)) + (5*(id*id*id)) + (0.9*(id*id)) + (2.2*(id)) + 1
AS quartic
FROM items
ORDER by id 

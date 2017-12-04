/* Random
 * Author: 40161642
 * Creation date: 28/10/2016
 */
 
// Random Number generating machines, ELEM should be a range in which the random value should be within
MACHINE
    Random(ELEM)
OPERATIONS
    vv <-- get_random_value =
    BEGIN
        vv :: ELEM
    END
END

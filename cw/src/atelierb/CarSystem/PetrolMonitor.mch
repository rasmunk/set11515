/* PetrolMonitor
 * Author: admin
 * Creation date: 26-10-2016
 */
MACHINE
    PetrolMonitor
SETS
    PETROL_LEVEL = {petrol_low, petrol_high}
OPERATIONS
    ss <-- get_petrol_level =
        ANY xx WHERE xx : PETROL_LEVEL THEN ss := xx END
END

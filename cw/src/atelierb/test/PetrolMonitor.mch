/* PetrolMonitor
 * Author: admin
 * Creation date: 25-10-2016
 */
MACHINE
    PetrolMonitor
SETS
    PETROL_STATES = {petrol_low,petrol_high}
OPERATIONS
    pp <-- get_petrol_level =
        ANY xx WHERE xx : PETROL_STATES THEN pp := xx 
    END
    
END

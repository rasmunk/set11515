/* BrakeInterface
 * Author: 40161642
 * Creation date: 28/10/2016
 */
MACHINE
    BrakeInterface
SETS
    BRAKE_STATES = {applied, released}
VARIABLES
    brake_status
INVARIANT
    brake_status : BRAKE_STATES
INITIALISATION
    brake_status := released
OPERATIONS
    apply_brakes =
    brake_status := applied;
    
    release_brakes =
    brake_status := released
END

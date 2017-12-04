/* Ignition
 * Author: admin
 * Creation date: 26-10-2016
 */
MACHINE
    Ignition
SETS
    IGNITION_STATUS = {inserted_key, withdrawn_key}
VARIABLES
    key_status
INVARIANT
    key_status : IGNITION_STATUS
INITIALISATION
    key_status := withdrawn_key
OPERATIONS
    insert_key = key_status := inserted_key;
    withdraw_key = key_status := withdrawn_key;
    kk <-- get_key_status =
    PRE key_status : IGNITION_STATUS
    THEN kk := key_status
    END
END

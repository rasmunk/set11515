/* Pedals
 * Author: admin
 * Creation date: 26-10-2016
 */
MACHINE
    Pedals
SETS
    PEDAL_STATES = {pressed,released}
OPERATIONS
    as <-- get_accelerator_status =
        ANY xx WHERE xx : PEDAL_STATES THEN as := xx END;
    bps <-- get_brake_pedal_status =
        ANY xx WHERE xx : PEDAL_STATES THEN bps := xx END
END

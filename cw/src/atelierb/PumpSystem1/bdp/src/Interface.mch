MACHINE
    Interface
SETS
    INTERFACE_STATUS = { enabled , disabled }
ABSTRACT_VARIABLES
    current_status
INVARIANT
    current_status : INTERFACE_STATUS
INITIALISATION
    current_status := disabled
OPERATIONS
    // These are a distraction.  Don't model human behaviour but deal with it
    enable = current_status := enabled ;
    disable = current_status := disabled ;
    ss <-- get_interface_status = ss := current_status
END

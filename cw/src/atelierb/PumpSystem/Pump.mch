MACHINE
    Pump
SETS
    PUMP_STATUS = {on, off}
VARIABLES
    pump_status
INVARIANT
    pump_status : PUMP_STATUS
INITIALISATION
    pump_status := off
OPERATIONS
    pump_on = pump_status := on;
    pump_off = pump_status := off
END

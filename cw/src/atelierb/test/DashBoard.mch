/* Dashboard
 * Author: admin
 * Creation date: 27-10-2016
 */
MACHINE
    Dashboard
SEES
    OilMonitor, PetrolMonitor
VARIABLES
    oil_pressure_warning, oil_temperature_warning, petrol_level_warning
INVARIANT
    oil_pressure_warning : OIL_PRESSURE & oil_temperature_warning : OIL_TEMPERATURE & petrol_level_warning : PETROL_STATES
INITIALISATION
    oil_pressure_warning, oil_temperature_warning, petrol_level_warning := oil_pressure_low, oil_temperature_low, petrol_low
OPERATIONS
    ss <-- set_warning_states(warning_state) =
    PRE warning_state : {OIL_PRESSURE \/ OIL_TEMPERATURE \/ PETROL_STATES}
    THEN
        ss := warning_state
     //   oil_pressure_warning := oil_pressure_high
        //PRE warning_state : OIL_PRESSURE
        //THEN oil_pressure_warning := warning_state
        //ELSIF warning_state : OIL_TEMPERATURE THEN oil_temperature_warning := warning_state
        //ELSIF warning_state : PETROL_STATES THEN petrol_level_warning := warning_state
        //END
    END
END

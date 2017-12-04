/* OilMonitor
 * Author: admin
 * Creation date: 26-10-2016
 */
MACHINE
    OilMonitor
SETS
    OIL_PRESSURE_LEVEL = {oil_pressure_low, oil_pressure_high};
    OIL_TEMPERATURE_LEVEL = {oil_temperature_low, oil_temperature_high}
OPERATIONS
    pp <-- get_pressure_level =
        ANY xx WHERE xx : OIL_PRESSURE_LEVEL THEN pp := xx 
    END;
    tt <-- get_temperature_level =
        ANY xx WHERE xx : OIL_TEMPERATURE_LEVEL THEN tt := xx
    END
END
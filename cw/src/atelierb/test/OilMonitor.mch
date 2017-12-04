/* OilMonitor
 * Author: admin
 * Creation date: 25-10-2016
 */
MACHINE
    OilMonitor
SETS
    OIL_PRESSURE = {oil_pressure_high, oil_pressure_low};
    OIL_TEMPERATURE = {oil_temperature_high, oil_temperature_low}
OPERATIONS
    pp <-- get_oil_pressure =
        ANY xx WHERE xx : OIL_PRESSURE THEN pp := xx 
    END;
    tt <-- get_oil_temperature =
        ANY xx WHERE xx : OIL_TEMPERATURE THEN tt := xx 
    END
END
/* Dashboard
 * Author: admin
 * Creation date: 27-10-2016
 */
MACHINE
    Dashboard
SETS
    LIGHTS = {on,off}
VARIABLES
    oil_pressure_light, oil_temperature_light, petrol_light
INVARIANT
    oil_pressure_light : LIGHTS & oil_temperature_light : LIGHTS & petrol_light : LIGHTS
INITIALISATION
    oil_pressure_light, oil_temperature_light, petrol_light := off, off, off
OPERATIONS
    oil_pressure_light_off =
    oil_pressure_light := off;

    oil_pressure_light_on =
    oil_pressure_light := on;

    
    oil_temperature_light_off =
    oil_temperature_light := off;
    
    oil_temperature_light_on =
    oil_temperature_light := on;
    
    petrol_light_off =
    petrol_light := off;
    
    petrol_light_on =
    petrol_light := on
END
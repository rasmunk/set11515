/* SpeedMonitor
 * Author: admin
 * Creation date: 26-10-2016
 */
 // This class is being imported into the EngineInterface since that class is responsible for reading, decreasing and increasing the speed of the car
MACHINE
    SpeedMonitor(maximum_speed)
ABSTRACT_VARIABLES
    speed
INVARIANT
    speed : NAT & speed <= maximum_speed
INITIALISATION
    speed := 0
CONSTRAINTS
    maximum_speed : NAT
OPERATIONS
    ss <-- get_speed =
        ANY xx WHERE xx : NAT & xx <= maximum_speed THEN ss := xx 
    END
END

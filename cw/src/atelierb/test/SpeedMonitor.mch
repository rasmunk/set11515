/* SpeedMonitor
 * Author: admin
 * Creation date: 26-10-2016
 */
MACHINE
    SpeedMonitor(maximum_speed)
CONSTRAINTS
    maximum_speed : NAT
OPERATIONS
    ss <-- get_speed =
        ANY xx WHERE xx : NAT & xx <= maximum_speed THEN ss := xx 
    END
END

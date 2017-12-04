/* EngineInterface
 * Author: 40161642
 * Creation date: 28/10/2016
 */
MACHINE
    EngineInterface
SETS 
    ENGINE_STATES = {on, off, failed}
SEES
    SpeedMonitor
OPERATIONS
    es <-- get_engine_status =
    ANY xx WHERE xx : ENGINE_STATES THEN es := xx END;
    
    increase_speed(speed) =
    PRE speed : NAT & (speed + get_speed) <= maximum_speed
    
    
END

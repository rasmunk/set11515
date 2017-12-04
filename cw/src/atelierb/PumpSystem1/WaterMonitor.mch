MACHINE
    WaterMonitor
SETS
    WATER_LEVEL = {water_high, water_low}
OPERATIONS
    ss <-- get_water_level =
        ANY xx WHERE xx : WATER_LEVEL THEN ss := xx END
END

MACHINE
    MethaneMonitor
SETS
    METHANE_LEVEL = {methane_high, methane_low}
OPERATIONS
    ss <-- get_methane_level =
        ANY xx WHERE xx : METHANE_LEVEL THEN ss := xx END
END

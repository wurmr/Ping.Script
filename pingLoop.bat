@echo OFF
@echo Starting Ping... Logging to ping.log file

:LOOP
@echo Time: %time% >> ping.log
ping -n 3 %1 >> ping.log
@echo Type Ctrl-C, Y to stop.
timeout 5
GOTO LOOP
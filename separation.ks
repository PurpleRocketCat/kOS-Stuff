// This script is for the duna delivery mission. It should
// release a package then careful rotate out of the way. 

PRINT "Beginning Separation protocol".
wait .5. 
PRINT "Warning! CHECK YOUR STAGING! 30 Seconds to separation".
WAIT 15.
PRINT "15 seconds to Separation".
wait 10.
LOCK Steering to NORMAL.
FROM {local countdown is 10.} UNTIL COUNTDOWN = 0 STEP {
	SET countdown to countdown -1.} DO {
		PRINT "..." + countdown.
		wait 1. 
		stage.
		} 
LOCK steering to PROGRADE.
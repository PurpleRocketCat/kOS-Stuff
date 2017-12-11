// Lander Script

// rough logic to use 

//release from delivery

wait 20. 
panels ON.
print "deploying solar panels and antenna".
//deploy the antenna here

LOCK STEERING TO HEADING(0,0).
print "going to sleep now".
//sleep logic
wait until ALT:RADAR < 120000. //meters

// lander approach logic
print "Final Approach".
// retract antennas.
print "retracting Antenna".
PANELS OFF.
LOCK backward to SRFRETROGRADE.
LOCK STEERING TO backward.
stage. // for triggering the parachutes
wait until ALT:RADAR < 10000.
stage. //should get rid of the heatshield
wait until ALT:RADAR < 30.
//figure out the damn time to impact logic + an amount?
// LOCK groundspeed to srfspeed.
IF groundspeed > 12 {stage.}  //Fire retrothrusters

// ok I'm safe on the ground hopefully?
wait 50.
if srfspeed <.1 {
	Panels on.
	SET P TO SHIP:PARTSNAMED("Communotron 32")[0].
	SET M TO P:GETMODULE("ModuleRTAntenna").
	M:DOEVENT("activate").
}




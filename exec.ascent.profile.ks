// Execute Ascent Profile v1.0.0

FUNCTION EXECUTE_ASCENT_STEP {
	PARAMETER direction.
	PARAMETER minAlt.
	PARAMETER newAngle.
	PARAMETER newThrust.
	
	SET prevThrust TO MAXTHRUST.

	UNTIL FALSE {
	
		IF MAXTHRUST < (prevThrust - 10) {
			SET currentThrottle TO THROTTLE.
			LOCK THROTTLE TO 0.
			WAIT 1. STAGE. WAIT 1.
			LOCK THROTTLE TO currentThrottle.
			SET prevThrust to MAXTHRUST.
			}
			
		IF ALTITUDE > minAlt {
			LOCK STEERING TO HEADING(direction, newAngle).
			LOCK THROTTLE TO newThrust.
			BREAK. 
		}
		
		WAIT 0.1.
	}
}

//SET ASCENT_PROFILE TO LIST(
//		0, 		85, 	1,
//		500,	85,		0.75,
//		1000,	30,		1,
//)

// EXECUTE_ASCENT_PROFILE(90, ASCENT_PROFILE).

FUNCTION EXECUTE_ASCENT_PROFILE {
	PARAMETER direction.
	PARAMETER profile.
	
	SET step TO 0.
	UNTIL step >= profile:length -1 {
		EXECUTE_ASCENT_STEP(
			direction,
			profile[step],
			profile[step+1],
			profile[step+2]
		).
		SET step TO step + 3.
	}
}












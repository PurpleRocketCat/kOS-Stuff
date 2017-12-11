// Circularization Script v0.0.1

PARAMETER targetAltitude.

	
// Transfer burn
SET transfer TO PROGRADE.
LOCK STEERING TO transfer. WAIT 5.
LOCK THROTTLE to 1.
WAIT UNTIL APOAPSIS > targetAltitude * 0.9.
LOCK THROTTLE to 0.1.
WAIT UNTIL APOAPSIS > targetAltitude
LOCK THROTTLE TO 0.

// Coast to Apoapsis
WAIT UNTIL ETA:APOAPSIS < 20

// Circularization burn
SET circularization to PROGRADE
LOCK STEERING TO circularization. WAIT 5.
LOCK THROTTLE TO 1.
WAIT UNTIl PERIAPSIS > targetAltitude * 0.9.
LOCK THROTTLE TO 0.1.
WAIT UNTIL PERIAPSIS > targetAltitude.
LOCK THROTTLE TO 0.


PRINT "LOADING LAUNCH SCRIPT".
DOWNLOAD("ascent.ks").
RUN ascent.ks.

SET ASCENT_PROFILE TO LIST(
  // Altitude,  Angle,  Thrust
  0,            90,     1,
  1500,         80,     1,
  10000,        75,     1,
  12000,        70,     1,
  15000,        65,     1,
  20000,        60,     1,
  25000,        55,     1,
  32000,        45,     1,
  45000,        35,     1,
  50000,        25,     1,
  60000,        0,      1,
  70000,        0,      1
).

LOCK THROTTLE TO 1. WAIT 1. STAGE.
EXECUTE_ASCENT_PROFILE(90, ASCENT_PROFILE).




LOCK THROTTLE TO 0.
PRINT "Step executed. Shutting down.".
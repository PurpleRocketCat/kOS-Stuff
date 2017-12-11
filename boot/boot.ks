// Generalized Boot Script v1.0.0

// The ship will use updateScript to check for new commands from KSC.
SET SHIP:CONTROL:PILOTMAINTHROTTLE TO 0.

// File checker function to go here


// Get a file from KSC
FUNCTION DOWNLOAD {
	PARAMETER name.
	IF EXISTS("0:"+name){
		COPYPATH("0:"+name , "1:"+name).
			}
		}


// First Run Checker to go here

// If first run, DL first run script here

// If we have a connection, see if there are new instructions. If so, download
// and run them.

IF ADDONS:RT:HASCONNECTION(SHIP) {
// Update the bootfile
COPYPATH("0:boot/boot.ks", "1:boot/boot.ks").

//execute new commands

IF EXISTS("0:update.ks") {
    MOVEPATH("0:update.ks", "1:update.ks").
    RUNPATH("1:update.ks").
    DELETEPATH("1:update.ks").
		}
	}

// Housecleaning
	IF EXISTS("1:update.ks") {
	DELETEPATH("update.ks").
	}
	
// If a startup.ks file exists on the disk, run that.
	IF EXISTS("1:startup.ks") {
	RUNPATH("startup.ks").
	DELETEPATH("startup.ks").
	} 

	WAIT UNTIL ADDONS:RT:HASCONNECTION(SHIP).
	WAIT 10. // Avoid thrashing the CPU (when no startup.ks, but we have a
			// persistent connection, it will continually reboot).
	REBOOT.
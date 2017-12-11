// Science Cleaner			

// to wipe out remaining science
  		FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("ModuleScienceExperiment") {
		IF P:GETMODULE("ModuleScienceExperiment"):HASDATA {
			P:GETMODULE("ModuleScienceExperiment"):RESET().
			}
    }
	}	

	FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("ModuleScienceExperiment") {
		IF P:GETMODULE("ModuleScienceExperiment"):HASDATA {
			P:GETMODULE("ModuleScienceExperiment"):DUMP().
			}
    }
  }

  
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("dmmodulescienceanimate") {
		IF P:GETMODULE("dmmodulescienceanimate"):HASDATA {
			//IF NOT P:GETMODULE("dmmodulescienceanimate"):INOPERABLE {
				P:GETMODULE("dmmodulescienceanimate"):RESET().
				// }
			}	
		}	
	}
  
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("dmmodulescienceanimate") {
		IF P:GETMODULE("dmmodulescienceanimate"):HASDATA {
			//IF NOT P:GETMODULE("dmmodulescienceanimate"):INOPERABLE {
				P:GETMODULE("dmmodulescienceanimate"):DUMP().
				// }
			}	
		}	
	}
	

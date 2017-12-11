// Automated script for running/collecting science

// deploy function
  //check for data/cleanup
  	//CHECKFORDATA().
	//IF DATA = TRUE {
	//	COLLECT_DATA().
	//	CHECKFORDATA().
	//		RETURN FALSE.
	//	//if data still equalls true, clean that shit
	//	Else sciencecleaner(). //to be written still
	//		
	//	}
	
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("ModuleScienceExperiment"){
		IF NOT P:GETMODULE("ModuleScienceExperiment"):RERUNNABLE {
			IF NOT P:GETMODULE("ModuleScienceExperiment"):INOPERABLE {
				IF NOT P:GETMODULE("ModuleScienceExperiment"):HASDATA {
					P:GETMODULE("ModuleScienceExperiment"):DEPLOY.
					}
				}
			}
		}
	}
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("dmmodulescienceanimate") {
		IF NOT P:GETMODULE("dmmodulescienceanimate"):RERUNNABLE {
			IF NOT P:GETMODULE("dmmodulescienceanimate"):INOPERABLE {
				IF NOT P:GETMODULE("dmmodulescienceanimate"):HASDATA {
					P:GETMODULE("dmmodulescienceanimate"):DEPLOY.
					}	
				}		
			}
		}
	}
	//FOR P in SHIP:PARTS {
	//IF P:MODULES:CONTAINS("ModuleScienceExperiment"):INOPERABLE {
	//P:GETMODULE("ModuleScienceExperiment"):reset().
	//						}
	//						ElSE Return false.
	//					}
	//}.
	

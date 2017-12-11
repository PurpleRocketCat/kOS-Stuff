FUNCTION reusablescience {
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("ModuleScienceExperiment") {
		IF P:GETMODULE("ModuleScienceExperiment"):RERUNNABLE {
			P:GETMODULE("ModuleScienceExperiment"):DEPLOY.
			}
    }
  }
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("dmmodulescienceanimate") {
		IF P:GETMODULE("dmmodulescienceanimate"):RERUNNABLE {
			//IF NOT P:GETMODULE("dmmodulescienceanimate"):INOPERABLE {
				P:GETMODULE("dmmodulescienceanimate"):DEPLOY.
				// }
			}	
		}	
	}
}

FUNCTION onetimescience {
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("ModuleScienceExperiment") {
		IF NOT P:GETMODULE("ModuleScienceExperiment"):RERUNNABLE {
			//IF NOT P:GETMODULE("ModuleScienceExperiment"):INOPERABLE {
				P:GETMODULE("ModuleScienceExperiment"):DEPLOY.
			   // }
			}
	}
  }
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("dmmodulescienceanimate") {
		IF NOT P:GETMODULE("dmmodulescienceanimate"):RERUNNABLE {
			//IF NOT P:GETMODULE("dmmodulescienceanimate"):INOPERABLE {
				P:GETMODULE("dmmodulescienceanimate"):DEPLOY.
				// }
			}	
		}	
	}
}


reusablescience.
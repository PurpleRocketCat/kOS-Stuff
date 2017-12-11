// Science CHECKER
FUNCTION CHECKFORDATA {
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("ModuleScienceExperiment") {
		IF P:GETMODULE("ModuleScienceExperiment"):HASDATA {
			SET hdata to True.
			}
		ELSE { 
			SET HDATA TO False.
			}
			}
	}	
}

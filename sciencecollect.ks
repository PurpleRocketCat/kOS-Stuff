// TO Collect all science do the following

SET P TO SHIP:PARTSNAMED("SCIENCEBOX")[0].
SET M TO P:GETMODULE("ModuleScienceContainer").
M:DoAction("Collect All", True). 
	
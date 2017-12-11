// program to detect what science parts are on board and experiment program
LOG "FUNCTION depo {
PARAMETER partname.
PARAMETER modu.
SET P TO SHIP:PARTSNAMED(partname)[0].
SET M TO P:GETMODULE(modu).
M:DEPLOY.
}" TO customscience.ks.

SET P:MODULES TO mods.

FOR GooExperiment in mods {
PRINT "it works".
}.
//LOG "depo(GooExperiment, "ModuleScienceExperiment")." TO customscience.ks.
//}.

//FOR sensorBarometer in MODLIST {
//LOG "depo(sensorBarometer, "ModuleScienceExperiment")." TO customscience.ks.
//}.
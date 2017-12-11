//SET P TO SHIP:PARTSNAMED("RelayAntenna50")[0].
//SET M to P:GETMODULE("ModuleRTAntenna").
//M:DOEVENT("activate").
// SET P TO SHIP:PARTSTAGGED("smallrelay2")[0].
// SET M to P:GETMODULE("ModuleRTAntenna").
// M:DOEVENT("activate").
// M:SETFIELD("target", "RT Relay Automated 2").
//SET antennabitsr2 TO SHIP:PARTSNAMED("RTShortDish2")[0].
//SET Modulebit to antennabitsr1:GETMODULE("ModuleRTAntenna").
//Modulebit:DOEVENT("activate").
//Modulebit:SETFIELD("target", "Kerbin").

// SET P TO SHIP:PARTSNAMED("RTGigaDish1")[0].
// SET M to P:GETMODULE("ModuleRTAntenna").
// M:DOEVENT("activate").
// M:SETFIELD("target", "Kerbin").


	FOR P IN SHIP:PARTS { 
		    IF P:MODULES:CONTAINS("ModuleDeployableAntenna") {
			SET M TO P:GETMODULE("ModuleRTAntenna").
			M:DOEVENT("Activate").
			//FOR A IN M:ALLACTIONNAMES() {
              //  IF A:CONTAINS("Extend") { M:DOACTION(A,True). }
            }.
        }
    



// FUNCTION partsExtendAntennas { 
//    FOR P IN SHIP:PARTS {
//       //IF P:MODULES:CONTAINS("ModuleDeployableAntenna") {
//            LOCAL M IS P:GETMODULE("ModuleDeployableAntenna").
 //           FOR A IN M:ALLACTIONNAMES() {
   //             IF A:CONTAINS("Extend") { M:DOACTION(A,True). }
     //       }.
       // }
//    }.
// }
 
 // partsExtendAntennas().
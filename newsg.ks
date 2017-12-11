// a REDO of the science collector + runner

// Example code from reddit for extending RT antennas

// FUNCTION partsExtendAntennas { 
//    FOR P IN SHIP:PARTS {
//       IF P:MODULES:CONTAINS("ModuleDeployableAntenna") {
//            LOCAL M IS P:GETMODULE("ModuleDeployableAntenna").
//            FOR A IN M:ALLACTIONNAMES() {
//                IF A:CONTAINS("Extend") { M:DOACTION(A,True). }
//            }.
//        }
//    }.
// }

FUNCTION partsrunscience {
  FOR P in SHIP:PARTS {
    IF P:MODULES:CONTAINS("ScienceExperimentModule") {
//    LOCAL M IS P:GETMODULE("ModuleScienceExperiment").
//    FOR A IN M:ALLACTIONNAMES() { A:DEPLOY. }
      FOR A IN P:GETMODULE("ModuleScienceExperiment"):ALLACTIONNAMES()
	  { A:DEPLOY. } // this is the same as the 2 commented lines
    }
  }
}
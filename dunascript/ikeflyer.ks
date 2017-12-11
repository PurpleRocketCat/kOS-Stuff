// ikeflyer
RUN separation.ks


// clear the delivery craft
LOCK STEERING TO NORMAL

RCS ON
//somehow fire thrusters for like 2seconds
wait 20.
PANELS ON.


// congrats you're hopefully not broken

///.... now what???
download test.ks.
run sg_rerun.ks.
run sciencecollect.ks.
run sciencecleaner.ks.
/// trying to get best angle for solar panels
lock ship:pitch(0,0).


//if no signal is available and there is pending science, 
//put that shit in the boot
//wait for signal and also check electrical charge
//	if electrical charge is below transmission threshold 
//		then wait until electrical is above 90% of electrical science
//then transmit your damn science



// oh right we're going to ike

//double check that we still have an encounter
//if so then notify "Ike approach appears nominal"
//point the craft for optimal solar panel exposure (probably 0,0?)
//then go the fuck to sleep
//wait until transition to IKE

// ok we've made it to IKE, now to do some SCIENCE!
//Check to see if our periapsis is above or below the near science line
//if periapsis is below near science limit
//	run only reusable experiments until we reach near science point
//		then run one time experiments at periapsis
//Else
	//RUN ALL THE SCIENCE NOW , including the shit that is one time
	

//Call up our science function for reusable science



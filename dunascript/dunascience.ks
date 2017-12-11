//science collector retry -again- 

// connection check logic for transmitting
check for connection
check for electrical
if fails, put in the boot
if already in boot, wait

// clear the boot logic


// safety check logic
does this experiment data already exist?
	check on instrument
	check on boot // no clue on how to do either of these two, maybe read the data to a 
				//variable of some sort?? 
	if it exists in either, run the move to boot logic	
			recheck
			if data is still in instrument
			run dumper
			recheck
			
		
can this experiment be run?
	is the instrument usable
		is the instrument inoperable
		
	
	
// for reusable science experiments
function reusable_science_experiments {
	check if science part exists in the parts list 
		then run safety check
			then run science runner
				then run transmission logic
		
		
		
		
// for the one time science experiments
function oneoff_science_experiments {
	check if science part exists in the parts list 
		then run safety check
			then run science runner
				then run transmission logic

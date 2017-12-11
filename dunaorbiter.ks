//Duna Orbiter 

// Circularize logic or function thingy


//separations orbit maintenance
Check for what the inclination currently is
calculate which is closer 180 or 90 degrees
change inclination to whichever is closer
check the current periapsis
	is the periapsis lesser than 250000?
		if so then calculate a burn to raise it to 275000
	is the periapsis greater than 300000?
		then burn to lower to 275000

Notify "periapsis now stablized at " periapsis height

// burn to capture around duna

notify we're now arrived at duna

// now to normalize the orbit

calculate burn to equalize PE and AP
notify equalizing the orbit
burn logic
pe and AP check
notify "welcome to duna, hope you didn't forget anything" 

Run the science shit function

start scansat going
	biome
	multispectral
	SAR Radar

//to do, create a scansat % done checker
// when % done on biome is high enough, change orbit to 500k

// 
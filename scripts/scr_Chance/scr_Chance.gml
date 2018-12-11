/// Scrip that helps objects determine the probability of stuff happening
/// @arg the chance something will happen.

var chanceOfHappening = argument0;
var didItHappen = random(100);
return didItHappen < chanceOfHappening;

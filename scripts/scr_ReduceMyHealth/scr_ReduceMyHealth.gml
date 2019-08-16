/// THis is a script than an Enemy can use to reduce his or her health
/// @arg amountToReduce

var amountToReduce = argument0;
characterHealth -= amountToReduce;
if(characterHealth <= 0) {
	scr_StateSwitch(s_DEAD);
}
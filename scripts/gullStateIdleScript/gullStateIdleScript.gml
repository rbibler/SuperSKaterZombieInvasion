/// Skater's idle state. 
/* 
*	Exits: 
*		- Left or right movement if on ground
*		- Jumping
*		- Crouching
*		- Hit
*		- Falling
*/

// Reset the animation and the jump counter if entering the state
if(stateNew) {
	sprite_index = spr_enemyGullIdle;
	image_index = 0;
	stateVar[0] = random_range(60 * 1, 60 * 3); // Timer to decide if the gull should peck
	stateVar[1] = 0;
	stateVar[2] = false;
	stateVar[3] = random_range(60*3, 60*7); // Timer to decide if the gull should hop
}

// If enough time has passed to start the animation idle thing do it.
// stateVar[0] = time in steps between idle animation cycles
// stateVar[1] = amount of time since last animation cycle
if(stateTimer - stateVar[1] >= stateVar[0]) {
	stateVar[2] = true;
}

if(stateTimer >= stateVar[3]) {
	var dir = floor(random(2));
	if(dir < 1) {
		myDirection = -1;
	} else {
		myDirection = 1;
	}
	stateSwitch("JUMPING");
}
	
if(stateTimer mod (60 / 5) == 0) {
	if(stateVar[2] == true) {
		image_index++;
		if(image_index >= image_number) {
			stateVar[1] = stateTimer;
			stateVar[0] = random_range(60 * 1, 60 * 3);
			image_index = 0;
			stateVar[2] = false;
		}
	}
}

MoveAndCollide();



var i = 0;
var numObjs = instance_number(obj_enemyParent);
var dist = 100;
for(i = 0; i < numObjs; i++) {
	var enemy = instance_find(obj_enemyParent, i);
	if(enemy != self) {
		dist = abs(x - enemy.x);
		if(dist <= 25) {
			stateSwitch("MOVING");
		}
	}
}

numObjs = instance_number(obj_ammo);
var dist = 100;
for(i = 0; i < numObjs; i++) {
	dist = abs(x - instance_find(obj_ammo, i).x);
	if(dist <= 25) {
		stateSwitch("MOVING");
	}
}

dist = abs(x - obj_skater.x);
if(dist <= 25) {
	stateSwitch("MOVING");
}

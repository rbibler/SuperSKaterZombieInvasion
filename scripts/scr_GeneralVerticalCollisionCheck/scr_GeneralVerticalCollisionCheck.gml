/// Checking to see if skater lands on something
// First check the bottom middle, then bottom right, then bottom left.


var oldY = y;
var groundedAtStart = grounded;
var curBottom = bbox_bottom;
var targetBottom = bbox_bottom + ySpeed;
if(ySpeed == 0) {
	targetBottom += 1;
} else if(ySpeed < 0) {
	grounded = false;
	y += ySpeed;
	return;
}

var curBottomTile = floor(curBottom / TILE_SIZE);
var targetBottomTile = floor(targetBottom / TILE_SIZE);
var p1 = 0;
var p2 = 0;
var p3 = 0;


var checkAll = true;


show_debug_message("YSpeed: " + string(ySpeed));

p3 = tilemap_get_at_pixel(collisionTiles, x, targetBottom);


if(p3 <= 0) {
	grounded = false;
} else {
	var tile = p3;
	var tileHorizIndex = x mod TILE_SIZE;
	var tileHeight = obj_slopeController.slopeHeights[tile, tileHorizIndex];
	var depthInTile = targetBottom mod TILE_SIZE;
	var dif = depthInTile - tileHeight;
	if(dif >= 0 or (groundedAtStart and tile > 5)) {
		grounded = true;
		scr_StopYMotion();
		y = (targetBottomTile * TILE_SIZE) + tileHeight + (y - bbox_bottom) - 1;
	} 
}

if(!grounded) {
	if(curBottomTile != targetBottomTile) {
		targetBottom = (curBottomTile * TILE_SIZE) + TILE_SIZE - 1;
		targetBottomTile = curBottomTile;
		p3 = tilemap_get_at_pixel(collisionTiles, x, targetBottom);
		if(p3 <= 0) {
			grounded = false;
		} else {
			var tile = p3;
			var tileHorizIndex = x mod TILE_SIZE;
			var tileHeight = obj_slopeController.slopeHeights[tile, tileHorizIndex];
			var depthInTile = targetBottom mod TILE_SIZE;
			var dif = depthInTile - tileHeight;
			if(dif >= 0 or (groundedAtStart and tile > 5)) {
				grounded = true;
				scr_StopYMotion();
				y = (targetBottomTile * TILE_SIZE) + tileHeight + (y - bbox_bottom) - 1;
			}
		}
	}
}

if(grounded) {
	if(tile > 5) {
		onSlope = true;
		slopeDirection = (tile< 15) ? UP_SLOPE : DOWN_SLOPE;
		slopeImpetus = obj_slopeController.slopeGravity[tile];
	} else {
		onSlope = false;
		slopeImpetus = 0;
	}
} else {
	if(groundedAtStart and onSlope) {
		if((slopeDirection == UP_SLOPE and xSpeed > 0) or (slopeDirection == DOWN_SLOPE and xSpeed < 0)) {
			targetBottomTile--;
		} else {
			targetBottomTile++;
		}
		p3 = tilemap_get_at_pixel(collisionTiles, x, (targetBottomTile * TILE_SIZE) + 1);
		var tile = p3;
		if(tile > 5) {
			var tileHorizIndex = x mod TILE_SIZE;
			var tileHeight = obj_slopeController.slopeHeights[tile, tileHorizIndex];
			grounded = true;
			scr_StopYMotion();
			y = (targetBottomTile * TILE_SIZE) + tileHeight + (y - bbox_bottom) - 1;
		}
	}
}

scr_GeneralVerticalMovement();
y += ySpeed;

if(y < oldY) {
	show_debug_message("Moved up!");
}

/*
* Adapted from Shaun Spaulding's tutorial: https://www.youtube.com/watch?v=Yre-XAE8DBA
*/

/*
var bbox_side = 0;
var p1 = 0;
var p2 = 0;


var oldY = y;
// If moving down, then we check collisions with the bottom edge
if(ySpeed >= 0) {
	bbox_side = bbox_bottom;
} else {
	// when moving up we check the top edge
	bbox_side = bbox_top;
}
// Find tile id for tiles at the bottom or top corners of where the object's bbox will be when 
// yspeed is added
p1 = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_side + ySpeed);
p2 = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_side + ySpeed);
// if either of the corner tiles is between 1 and 4 (inclusive) it's a solid tile
if(((p1 != 0 and p1 <= 4 and p1 > 0) or (p2 != 0 and p2 <= 4 and p2 > 0))) {
	// if moving down, it's a collision with the floor
	// so set the object's y value to the top of that tile (taking into account the distance
	// between the object's origin and its bbox
	if(ySpeed > 0) {
		show_debug_message("Y collision flat");
		var bboxTile = floor((bbox_side + ySpeed) / 16);
		bboxTile *= 16;
		y = bboxTile - (bbox_bottom - y) - 1;
		grounded = true;
		

	} 
	// Stop the object from moving anymore
	scr_StopYMotion();
} 



// Find out how far above the ground the object is for slope collisions 
var floorDist = scr_GeneralInFloor(collisionTiles, x, bbox_bottom + ySpeed);
if(floorDist >= 0) {
	// if the object is "in" the floor, find out what kind of floor it's in
	var tileId = tilemap_get_at_pixel(collisionTiles, x, bbox_bottom + ySpeed);
	// If it's a slope tile...
	if(tileId != 0 and tileId != 4 and tileId != 5 and ySpeed > 0) {
		show_debug_message("Y collision slope");
		onSlope = true;
		slopeDirection = (tileId < 15) ? UP_SLOPE : DOWN_SLOPE;
		// move it to where it wants to be
		y += ySpeed;
		// Then set it back to one pixel above the floor
		y -= (floorDist + 1);
		// Stop its y motion
		scr_StopYMotion();
		// And update the floor distance variable to reflect it's new y pos
		floorDist = -1;
		grounded = true;
		
		
	}
}

// At this point, check to see if we haven't hit anything, and then look for intervening stuff
if(ySpeed > 0 and !grounded) {
	var tileBottom = floor(bbox_bottom / TILE_SIZE);
	var tileBottomPlus = floor((bbox_bottom + ySpeed) / TILE_SIZE);
	if(tileBottom != tileBottomPlus) {
		var target = (tileBottom * TILE_SIZE) + TILE_SIZE;
		// Find out how far above the ground the object is for slope collisions 
		floorDist = scr_GeneralInFloor(collisionTiles, x, target);
		if(floorDist >= 0) {
			// if the object is "in" the floor, find out what kind of floor it's in
			var tileId = tilemap_get_at_pixel(collisionTiles, x, target);
			// If it's a slope tile...
			if(tileId != 0 and tileId != 4 and tileId != 5 and ySpeed > 0) {
				show_debug_message("Y collision slope intervening");
				onSlope = true;
				slopeDirection = (tileId < 15) ? UP_SLOPE : DOWN_SLOPE;
				// move it to where it wants to be
				y += (target - bbox_bottom);
				// Then set it back to one pixel above the floor
				y -= (floorDist + 1);
				// Stop its y motion
				scr_StopYMotion();
				// And update the floor distance variable to reflect it's new y pos
				floorDist = -1;
				grounded = true;	
			}
		}
	}
}

scr_GeneralVerticalMovement();

// If the object was grounded at the start of the frame and is still grounded
if(grounded and !platformGrounded) {
	if(onSlope) {
		y += abs(floorDist) - 1;
		show_debug_message("ground and on slope adjustment");
	}
	if((bbox_bottom mod 16) == 15) {
		var tileIdDown = tilemap_get_at_pixel(collisionTiles, x, bbox_bottom + 1);
		if(tileIdDown > 5) {
			y += abs(scr_GeneralInFloor(collisionTiles, x, bbox_bottom + 1));
		}
	}
}


if(place_meeting(x, y + ySpeed, obj_baseBlock)) {
	var obj = instance_place(x, y + ySpeed, obj_baseBlock);
	if(obj != noone and obj.isSolid) {
		while(!place_meeting(x, y + sign(ySpeed), obj_baseBlock)) {
			y = y + sign(ySpeed);
		}
		
		if(!grounded and ySpeed > 0) {
			grounded = true;
			
			
		}
		if(bbox_bottom > obj.bbox_top and obj.object_index == obj_controlBlock) {
			y = obj.bbox_top - (bbox_bottom - y) - 1;
		}
		scr_StopYMotion();
		with(obj) {
			script_execute(skaterVertCollisionScript, other);
		}
	}
} else if(grounded) {
	if(place_meeting(x, y + 2, obj_baseBlock)) {
		var obj = instance_place(x, y + 2, obj_baseBlock);
			if(obj != noone and obj.isSolid) {
			y = obj.bbox_top - (bbox_bottom - y) - 1;
			scr_StopYMotion();
			with(obj) {
				script_execute(skaterVertCollisionScript, other);
			}
		}
	}
}

y += ySpeed;
*/
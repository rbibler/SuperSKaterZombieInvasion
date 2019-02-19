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
		if(tile > 0) {
			var tileHorizIndex = x mod TILE_SIZE;
			var tileHeight = obj_slopeController.slopeHeights[tile, tileHorizIndex];
			grounded = true;
			scr_StopYMotion();
			y = (targetBottomTile * TILE_SIZE) + tileHeight + (y - bbox_bottom) - 1;
		}
	}
}

scr_GeneralVerticalMovement();


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

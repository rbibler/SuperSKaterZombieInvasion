// Check for collision with ladder tile
var climbing = false;
var tileTopLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_top);
var tileTopRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_top);
var tileBottomRight = tilemap_get_at_pixel(collisionTiles, bbox_right, bbox_bottom + 1);
var tileBottomLeft = tilemap_get_at_pixel(collisionTiles, bbox_left, bbox_bottom + 1);
var xTile = 0;
if(grounded) {
	if(input[UP]) {
		if(tileTopLeft == 5 or tileTopRight == 5) {
			if(tileTopLeft == 5) {
				xTile = floor(bbox_left / 16);
			} else {
				xTile = floor(bbox_right / 16);
			}
			climbing = true;
		}
	} else if(input[DOWN]) {
		if(tileBottomRight == 4 or tileBottomLeft == 4) {
			if(tileBottomRight == 4) {
				xTile = floor(bbox_right / 16);
			} else {
				xTile = floor(bbox_left / 16);
			}
			climbing = true;
		}
	}
} else {
	if(input[UP] or input[DOWN]) {
		if(tileTopLeft == 5 or tileTopRight == 5 or tileBottomRight == 5 or tileBottomLeft == 5) {
			if(tileTopLeft == 5 or tileBottomLeft == 5) {
				xTile = floor(bbox_left / 16);
			} else if(tileTopRight == 5 or tileBottomRight == 5) {
				xTile = floor(bbox_right / 16);
			}
			climbing = true;
		}
	}
}

if(climbing) {
	scr_StateSwitch("CLIMBING");
	myGravity = 0;
	scr_StopXMotion();
	scr_StopYMotion();
	x = (xTile * 16) + 8;
}

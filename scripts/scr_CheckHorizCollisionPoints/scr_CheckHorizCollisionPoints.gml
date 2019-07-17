/// This is a script that helps an object check if its collision points are colliding

var collisionPointHoriz = argument0;
horizColPoints[HC_TOP] = tilemap_get_at_pixel(collisionTiles, collisionPointHoriz, bbox_top);
horizColPoints[HC_BOTTOM] = tilemap_get_at_pixel(collisionTiles, collisionPointHoriz, bbox_bottom - 4);
horizColPoints[HC_MIDDLE] = tilemap_get_at_pixel(collisionTiles, collisionPointHoriz, bbox_bottom - ((bbox_bottom - bbox_top) / 2));
if(tilemap_get_at_pixel(collisionTiles, x, bbox_bottom) > 3) {
	horizColPoints[HC_BOTTOM] = 0;
}
// Check horizontal collisions
/*
* Adapted from Shaun Spaulding's tutorial: https://www.youtube.com/watch?v=Yre-XAE8DBA
*/

var collisionPointHoriz = scr_CalculateNewHorizLocation();
scr_CheckHorizCollisionPoints(collisionPointHoriz);
scr_BasicHorizCollisionResponse(collisionPointHoriz);
scr_CheckHorizBlockCollisions();

x += xSpeed;
if(global.debug and object_index == obj_skater) {
	show_debug_message("    xSpeed: " + string(xSpeed));
}
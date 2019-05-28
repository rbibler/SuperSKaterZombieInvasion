// Check horizontal collisions
/*
* Adapted from Shaun Spaulding's tutorial: https://www.youtube.com/watch?v=Yre-XAE8DBA
*/

var collisionPointHoriz = scr_CalculateNewHorizLocation();
scr_CheckHorizCollisionPoints(collisionPointHoriz);
script_execute(horizontalCollisionResponseScript, collisionPointHoriz);
scr_CheckHorizBlockCollisions();


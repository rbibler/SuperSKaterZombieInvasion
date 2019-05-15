scr_StopYMotion();
xSpeed += decel * sign(xSpeed);
if(abs(xSpeed) < 1) {
	scr_StopXMotion();
}
scr_MoveAndCollide();
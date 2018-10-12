/// This is a script that helps an object set only its upper body animation
/// @arg anim
/// @arg frame

var anim = argument0;
var frame = argument1;

previousArmsAnim = currentArmsAnim;
currentArmsAnim = anim;
currentArmsAnim.currentIndex = frame;
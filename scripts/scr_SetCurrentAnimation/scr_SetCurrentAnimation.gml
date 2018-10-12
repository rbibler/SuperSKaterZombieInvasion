/// This is a script that helps an object set its current animation. It also keeps tracking of the previous animation.
/// @arg legsAnim
/// @arg armsAnim
/// @arg legsFrame
/// @arg armsFrame

var legsFrame = argument2;
var armsFrame = argument3;

previousLegsAnim = currentLegsAnim;
currentLegsAnim = argument0;

previousArmsAnim = currentArmsAnim;
currentArmsAnim = argument1;

currentLegsAnim.currentIndex = legsFrame;
currentArmsAnim.currentIndex = armsFrame;

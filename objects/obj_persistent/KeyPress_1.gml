/// @description Insert description here
// You can write your code in this editor



switch(keyboard_lastkey) {
	case 50:
		obj_skater.x = 5;
		room_goto(rm_world1_level1b);
	break;
	
	case 72:
		with(obj_skater) {
			scr_SkaterHit(noone, 10);
		}
	break;
	
	case 84:
		with(obj_skater) {
			scr_SkaterHit(noone, 100);
		}
	break;
	
}
// Directional Input
#macro	UP				0
#macro	DOWN			1
#macro	LEFT			2
#macro	RIGHT			3

// Menu Input
#macro	SELECT			4
#macro	START			5

// Action input
#macro	SHOOT			6
#macro	JUMP			7
#macro	TRANSITION		8
#macro	WEAPON_SWITCH	9

#macro s_IDLE					"IDLE"
#macro s_BORED					"BORED"
#macro s_MOVING					"MOVING"
#macro s_CROUCHING				"CROUCHING"
#macro s_JUMPING				"JUMPING"
#macro s_GRINDING				"GRINDING"
#macro s_SLAMMING				"SLAMMING"
#macro s_RECOVERING				"RECOVERING"
#macro s_HIT					"HIT"
#macro s_CLIMBING				"CLIMBING"
#macro s_CLIMBOUT				"CLIMBOUT"
#macro s_FALLING				"FALLING"
#macro s_ROLLING				"ROLLING"
#macro s_DEAD					"DEAD"
#macro s_DROWNED				"DROWNED"
#macro s_BOUNCING				"BOUNCING"
#macro s_KNOCKED_BACK			"KNOCKED BACK"
#macro s_FLOATING				"FLOATING"
#macro s_ATTACKING				"ATTACKING"
#macro s_DEFENDING				"DEFENDING"
#macro s_MENACING				"MENACING"
#macro s_ON_FOOT_IDLE			"ON_FOOT_IDLE"
#macro s_ON_FOOT_BORED			"ON_FOOT_BORED"
#macro s_ON_FOOT_SITTING		"ON_FOOT_SITTING"
#macro s_ON_FOOT_PUSH_OFF		"ON_FOOT_PUSH_OFF"
#macro s_RUNNING				"RUNNING"
#macro s_ON_FOOT_JUMPING		"ON_FOOT_JUMPING"
#macro s_ON_FOOT_FALLING		"ON_FOOT_FALLING"
#macro s_ON_FOOT_CROUCHING		"ON_FOOT_CROUCHING"
#macro s_FOOT_TO_SKATE			"FOOT_TO_SKATE"
#macro s_SKATE_TO_FOOT			"SKATE_TO_FOOT"
#macro s_ON_FOOT_STOP			"ON_FOOT_STOP"
#macro s_STAIRS					"STAIRS"
#macro s_BOARD_SWING			"BOARD_SWING"
#macro s_BOARD_STRUCK			"BOARD_STRUCK"
#macro s_ON_FOOT_HURT			"ON_FOOT_HURT"
#macro s_ON_FOOT_SHIELD			"ON_FOOT_SHIELD"
#macro s_ON_FOOT_JUMP_SHIELD	"ON_FOOT_JUMP_SHIELD"
#macro s_JUMP_SHIELD			"JUMP_SHIELD"


#macro RES_W	640
#macro RES_H	360

#macro GRID_X	8
#macro GRID_Y	8

#macro TILE_SIZE 16

#macro FACE_RIGHT	1
#macro FACE_LEFT	-1

#macro UP_SLOPE		1
#macro DOWN_SLOPE	2

#macro NORMAL_ANIM_SPEED		5 / 60
#macro FAST_ANIM_SPEED			10 / 60
#macro SUPER_FAST_ANIM_SPEED	15/60
#macro ZOMBIE_ANIM_SPEED		2 / 60
#macro VERY_SLOW_ANIM_SPEED		3 / 120

#macro HEALTH	1

#macro WEAPON_COUNT	3

enum ANIMATION {

	NORMAL = 60 / 5,
	NORMALDECIMAL = 0.0833333
}

enum WEAPONSTATES {
	IDLE = 1,
	FIRING = 2
}






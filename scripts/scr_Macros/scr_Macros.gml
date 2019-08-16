// Movement states
#macro	SKATE_STATE		1
#macro	ON_FOOT_STATE	2
#macro	VEHICLE_STATE	3

// Vehciles
#macro	NO_VEHICLE		0
#macro	JET_SKI			1

#macro NUM_INPUTS	10

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
#macro  ACTION			9
#macro  TRICK			9

// Input will be stored in 10 bits like this:
// A T J S ST SL R L D U


#macro INPUT_UP			0x01		// 0001
#macro INPUT_DOWN		0x02		// 0010
#macro INPUT_LEFT		0x04		// 0100
#macro INPUT_RIGHT		0x08		// 1000
#macro INPUT_TRICK		0x200		// 1000000000

// Trick directional input
#macro FORWARD	0x04
#macro BACK		0x08


// Horizontal Collision Point Indexes
#macro HC_TOP		0
#macro HC_BOTTOM	1
#macro HC_MIDDLE	2

#macro SKATE			0x8000
#macro FOOT				0xA000
#macro VEHICLE			0xC000


#macro s_IDLE					SKATE | 0x01
#macro s_BORED					SKATE | 0x02
#macro s_MOVING					SKATE | 0x03
#macro s_CROUCHING				SKATE | 0x04
#macro s_JUMPING				SKATE | 0x05
#macro s_GRINDING				SKATE | 0x06
#macro s_SLAMMING				SKATE | 0x07
#macro s_RECOVERING				SKATE | 0x08
#macro s_HIT					SKATE | 0x09
#macro s_CLIMBING				SKATE | 0x0A
#macro s_CLIMBOUT				SKATE | 0x0B
#macro s_FALLING				SKATE | 0x0C
#macro s_ROLLING				SKATE | 0x0D
#macro s_DEAD					SKATE | 0x0E
#macro s_DROWNED				SKATE | 0x0F
#macro s_BOUNCING				SKATE | 0x10
#macro s_KNOCKED_BACK			SKATE | 0x11
#macro s_FLOATING				SKATE | 0x12
#macro s_ATTACKING				SKATE | 0x13
#macro s_DEFENDING				SKATE | 0x14
#macro s_MENACING				SKATE | 0x15
#macro s_TRICK_FLIPTRICK		SKATE | 0x16
#macro s_JOUSTING				SKATE | 0x17
#macro s_ON_FOOT_IDLE			FOOT | 0x01
#macro s_ON_FOOT_BORED			FOOT | 0x02
#macro s_ON_FOOT_SITTING		FOOT | 0x03
#macro s_ON_FOOT_PUSH_OFF		FOOT | 0x04
#macro s_RUNNING				FOOT | 0x05
#macro s_ON_FOOT_JUMPING		FOOT | 0x06
#macro s_ON_FOOT_FALLING		FOOT | 0x07
#macro s_ON_FOOT_CROUCHING		FOOT | 0x08
#macro s_FOOT_TO_SKATE			FOOT | 0x09
#macro s_SKATE_TO_FOOT			FOOT | 0x0A
#macro s_ON_FOOT_STOP			FOOT | 0x0B
#macro s_STAIRS					FOOT | 0x0C
#macro s_BOARD_SWING			FOOT | 0x0D
#macro s_BOARD_STRUCK			FOOT | 0x0E
#macro s_ON_FOOT_HURT			FOOT | 0x0F
#macro s_ON_FOOT_SHIELD			FOOT | 0x10
#macro s_ON_FOOT_JUMP_SHIELD	FOOT | 0x11
#macro s_JUMP_SHIELD			VEHICLE | 0x01 | JET_SKI << 8
#macro s_JET_SKI_IDLE			VEHICLE | 0x02 | JET_SKI << 8
#macro s_JET_SKI_MOVING			VEHICLE | 0x03 | JET_SKI << 8
#macro s_JET_SKI_JUMPING		VEHICLE | 0x04 | JET_SKI << 8
#macro s_JET_SKI_FALLING		VEHICLE | 0x05 | JET_SKI << 8
#macro s_JET_SKI_PLASTERED		VEHICLE | 0x06 | JET_SKI << 8
#macro s_JET_SKI_DUCKING		VEHICLE | 0x07 | JET_SKI << 8

// Tricks
#macro NO_TRICK					0
#macro SHOVE_IT					1
#macro KICKFLIP					2
#macro IMPOSSIBLE				3
#macro MCTWIST					4

// Collision Points
#macro LEFT_CORNER				0
#macro MIDDLE					1
#macro RIGHT_CORNER				2

#macro TOP_LEFT					0
#macro MIDDLE_LEFT				1
#macro BOTTOM_LEFT				2
#macro TOP_RIGHT				3
#macro MIDDLE_RIGHT				4
#macro BOTTOM_RIGHT				5


#macro RES_W	640
#macro RES_H	360

#macro GRID_X	8
#macro GRID_Y	8

#macro TILE_SIZE 32

#macro FACE_RIGHT	1
#macro FACE_LEFT	-1

#macro UP_SLOPE		1
#macro DOWN_SLOPE	2

#macro NORMAL_ANIM_SPEED		5 / 60
#macro FAST_ANIM_SPEED			10 / 60
#macro SUPER_FAST_ANIM_SPEED	15/60
#macro ZOMBIE_ANIM_SPEED		2 / 60
#macro VERY_SLOW_ANIM_SPEED		3 / 120

#macro NORMAL_ANIM_SPEED_FRAME_RATE		5
#macro FAST_ANIM_SPEED_FRAME_RATE		10
#macro SUPER_FAST_ANIM_SPEED_FRAME_RATE	15
#macro VERY_SLOW_ANIM_SPEED_FRAME_RATE	3

#macro HEALTH	1

#macro WEAPON_COUNT	3

#macro CONTROLLER_LAYER			"Controllers"
#macro WEAPONS_LAYER			"Weapons"
#macro AMMO_LAYER				"Ammo"
#macro ANIMS_LAYER				"Anims"
#macro TRIGGERS_LAYER			"Triggers"
#macro POWERUPS_LAYER			"Powerups"
#macro FOREGROUND_LAYER			"Foreground"
#macro FOREGROUND_ENEMIES_LAYER	"ForegroundEnemies"
#macro ENEMIES_LAYER			"Enemies"
#macro PLAYER_LAYER				"Player"
#macro INTERACTIVES_LAYER		"Interactives"
#macro BLOCKS_LAYER				"Blocks"
#macro VEHICLES_LAYER			"Vehicles"

enum HIT_TYPE {
	TRICK_BLAST = 0,
	AMMO = 1,
	BOARD = 2
}

enum ANIMATION {

	NORMAL = 60 / 5,
	NORMALDECIMAL = 0.0833333
}

enum WEAPONSTATES {
	IDLE = 1,
	FIRING = 2
}






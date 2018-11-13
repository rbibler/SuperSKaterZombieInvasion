#macro	UP		0
#macro	DOWN	1
#macro	LEFT	2
#macro	RIGHT	3
#macro	SELECT	4
#macro	START	5
#macro	SHOOT	6
#macro	SPRINT	6
#macro	JUMP	7


#macro s_IDLE			"IDLE"
#macro s_MOVING			"MOVING"
#macro s_CROUCHING		"CROUCHING"
#macro s_JUMPING		"JUMPING"
#macro s_SLAMMING		"SLAMMING"
#macro s_RECOVERING		"RECOVERING"
#macro s_HIT			"HIT"
#macro s_CLIMBING		"CLIMBING"
#macro s_FALLING		"DYING"
#macro s_ROLLING		"ROLLING"
#macro s_DEAD			"DEAD"
#macro s_DROWNED		"DROWNED"
#macro s_BOUNCING		"BOUNCING"
#macro s_KNOCKED_BACK	"KNOCKED BACK"
#macro s_FLOATING		"FLOATING"
#macro s_ATTACKING		"ATTACKING"
#macro s_DEFENDING		"DEFENDING"
#macro s_MENACING		"MENACING"

#macro RES_W	512
#macro RES_H	240

#macro GRID_X	8
#macro GRID_Y	8

#macro NORMAL_ANIM_SPEED	5 / 60
#macro FAST_ANIM_SPEED  10 / 60
#macro ZOMBIE_ANIM_SPEED 2 / 60

#macro HEALTH	1

enum ANIMATION {

	NORMAL = 60 / 5,
	NORMALDECIMAL = 0.0833333
}

enum WEAPONSTATES {
	IDLE = 1,
	FIRING = 2
}




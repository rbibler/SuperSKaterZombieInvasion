/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// I'll probably move this to the parent level. Most enemies will need to react to hits
stateHit = stateCreate("HIT", stateHitScript);
stateMenacing = stateCreate("MENACING", stateMenacingScript);
stateExploding = stateCreate("EXPLODING", stateExplodingScript);
stateDead = stateCreate("DEAD", stateDeadScript);
moveDirOnRestart = RIGHT;

canEat = true;


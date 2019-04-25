/// @description Insert description here
// You can write your code in this editor
currentRotation = 0;
frameTimer = 0;
currentAnimation = scr_RegisterStateAnimation(sprite_index, rotationSpeed / room_speed, true, noone, "", sprite_get_number(sprite_index));
/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(0, hud_start_pos_y, hud_width, hud_start_pos_y + hud_height, c_black, c_black, c_black, c_black, false);
draw_sprite(spr_hud, 0, 0, hud_start_pos_y);
DisplaySpriteAtGrid(spr_healthBar, GetPlayerHealthImage(), 5, 26);
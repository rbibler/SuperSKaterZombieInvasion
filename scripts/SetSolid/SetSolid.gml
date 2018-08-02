/// Script that set's a block's solid status by swapping it's mask for an empty one
/// @arg solid

var isSolid = argument0;

if(isSolid) {
	mask_index = sprite_index;
} else {
	mask_index = spr_empty;
}
/// @description Insert description here
// You can write your code in this editor
if(onSlopeRight) {
	var slopeBlock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_slopeBlockRight, true, false);
	var solidBlock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_solidBlock, true, false);
	if(!slopeBlock and !solidBlock) {
		while(!slopeBlock and !solidBlock) {
			show_debug_message("Slope right while");
			y++;
			slopeBlock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_slopeBlockRight, true, false);
			solidBlock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_solidBlock, true, false);
		}
	}
}

if(onSlopeLeft) {
	var slopeBlock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_slopeBlockLeft, true, false);
	var solidBlock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_solidBlock, true, false);
	if(!slopeBlock and !solidBlock) {
		while(!slopeBlock and !solidBlock) {
			show_debug_message("Slope left while");
			y++;
			slopeBlock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_slopeBlockLeft, true, false);
			solidBlock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + 1, obj_solidBlock, true, false);
		}
	}
}

SaveInput();
SaveBounds();

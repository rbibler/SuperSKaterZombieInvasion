/// @description Insert description here
// You can write your code in this editor
if(room_exists(nextRoom) && frameTimer >= 10) {
	other.exitKey = objectLinkKey;
	other.newRoom = true;
	room_goto(nextRoom);
}
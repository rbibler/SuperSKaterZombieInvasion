/// This is a script that an Enemy can use to determine if he or she is vulnerable to attack

if(state == s_DEAD or state == s_HIT or stateNext == s_DEAD or stateNext == s_HIT) {
	return false;
}

if(object_index == obj_skater) {
	if(isImmune) {
		return false;
	}
}

return true;
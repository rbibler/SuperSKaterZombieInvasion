/// This is a script that an Enemy can use to determine if he or she is vulnerable to attack

if(stateID == s_DEAD or stateID == s_HIT or stateNext == s_DEAD or stateNext == s_HIT) {
	return false;
}

if(object_index == obj_skater) {
	if(isImmune) {
		return false;
	}
}

return true;
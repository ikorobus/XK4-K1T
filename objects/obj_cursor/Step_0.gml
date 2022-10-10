// check for inside
if (place_meeting (x, y, obj_inside)) {
	inside = true;
}
else {
	inside = false;
}

//change state ins/outs
if (inside == true) {
	if (obj_dummy.state = button.pencil) {
		state = player.pencil;
	}
	if (obj_dummy.state = button.hammer) {
		state = player.hammer;
	}
	if (obj_dummy.state = button.brush) {
		state = player.brush;
	}
}
else {
	state = player.cursor;
}

#region state machine
	switch (state) {
		#region cursor state
		case player.cursor:
			sprite_index = sprt_cursor
		break;
		#endregion	
		#region pencil state
		case player.pencil:
			sprite_index = sprt_small
		break;
		#endregion
		#region hammer state
		case player.hammer:
			sprite_index = sprt_big
		break;
		#endregion
		#region brush state
		case player.brush:
			sprite_index = sprt_debris0
		break;
		#endregion
	}
#endregion
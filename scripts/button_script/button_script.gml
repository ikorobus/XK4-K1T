function button_script(argument0, argument1, argument2, argument3) {
	var obj = argument0
	var state_off = argument1
	var state_on = argument2
	var button_on = argument3

	if (position_meeting(mouse_x, mouse_y, obj)) {
		above = true
	}
	else {
		above = false
	}

	if (above = true) {
		if (mouse_check_button_pressed(mb_left)) {
		pressed = true
		} 
	}

	switch (state) {
		case state_off:
			image_index = 0
			obj_dummy.state = button.off
		
		 	if (pressed) {
				image_index = 1
			}
			if (state = state_off) {
				if (mouse_check_button_released(mb_left) and (pressed)) {
					state = state_on
					pressed = false
				}
			}
		break
		case state_on:
			image_index = 2
			obj_dummy.state = button_on

			if (pressed) {
				image_index = 3
			}
			if (state = state_on) {
				 if (mouse_check_button_released(mb_left) and (pressed)) {
					 state = state_off
					 pressed = false
				 }
			 }
		break
	}


}

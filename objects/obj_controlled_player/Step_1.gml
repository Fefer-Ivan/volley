switch (control) {
	case control_type.keyboard:
		run_direction = 0;
		if (keyboard_check(ord("A"))) {
			run_direction -= 1;
		}
		if (keyboard_check(ord("D"))) {
			run_direction += 1;
		}
		jumping = keyboard_check(ord("W"));

		strike_action = strike_type.none;
		if (keyboard_check(ord("2"))) {
			strike_action = strike_type.up;
		} else if (keyboard_check(ord("E"))) {
			strike_action = strike_type.forward;
		} else if (keyboard_check(ord("Q"))) {
			strike_action = strike_type.pass;
		}
		break;
	case control_type.gamepad:		
		run_direction = 0;
		if (gamepad_button_check(gamepad_device_id, gp_padl)) {
			run_direction -= 1;
		}
		if (gamepad_button_check(gamepad_device_id, gp_padr)) {
			run_direction += 1;
		}
		if (gamepad_axis_value(gamepad_device_id, gp_axislh) != 0) {
			run_direction = gamepad_axis_value(gamepad_device_id, gp_axislh)
		}
		
		jumping = gamepad_button_check(gamepad_device_id, gp_padu) ||
				gamepad_button_check(gamepad_device_id, gp_face1) ||
				gamepad_axis_value(gamepad_device_id, gp_axislv) < -0.8;
			
		strike_action = strike_type.none;
		if (gamepad_button_check(gamepad_device_id, gp_face2)) {
			strike_action = strike_type.up;
		} else if (gamepad_button_check(gamepad_device_id, gp_face4)) {
			strike_action = strike_type.forward;
		} else if (gamepad_button_check(gamepad_device_id, gp_face3)) {
			strike_action = strike_type.pass;
		}
		break;
}
show_debug_message("Event = " + async_load[? "event_type"]);        // Debug code so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch(async_load[? "event_type"]) {             // Parse the async_load map to see which event has been triggered
	case "gamepad discovered":                     // A game pad has been discovered
	    var pad = async_load[? "pad_index"];       // Get the pad index value from the async_load map
		gamepad_device_id = pad;
		control = control_type.gamepad;
		break;
}
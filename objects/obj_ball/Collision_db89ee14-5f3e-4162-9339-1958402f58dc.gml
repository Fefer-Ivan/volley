if (current_time != last_touch_time) {
	scr_update_touches(id, other.id);
	last_touch_time = current_time;
}
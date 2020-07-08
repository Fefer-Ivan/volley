/// @arg message
/// @arg point_count
var message = argument0;
var point_count = argument1;

if (point_count > 1) {
	message += " #" + string(point_count);
}
return message;
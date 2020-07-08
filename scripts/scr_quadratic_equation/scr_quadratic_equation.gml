/// @desc Return positive root of quadratic equation ax^2 + bx + c = 0
/// @arg a
/// @arg b
/// @arg c

var a = argument0;
var b = argument1;
var c = argument2;

var x0 = (-b - sqrt(b*b - 4*a*c)) / (2*a);
var x1 = (-b + sqrt(b*b - 4*a*c)) / (2*a)

if (x0 > 0) {
	return x0;
} else {
	return x1;
}
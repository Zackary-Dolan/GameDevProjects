/// @description inherit and update variables

event_inherited();

if (damage >= 100)
{
	instance_create_depth(x, y ,0, obj_gem5);
	effect_create_depth(-100, ef_firework, x, y, 1, c_blue);
	instance_destroy();
}








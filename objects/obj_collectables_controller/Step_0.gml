/// @description reset nuiber collected and generate random pickup

if (collected > 100)
{
	collected = 0;
	
	var _new_pickup = choose(obj_magnet_pu, obj_shotgun_pu, obj_laser_pu, obj_drone_pu, obj_red_razor_pu, obj_nuke_pu);
	
	instance_create_depth(0, 0, 0, _new_pickup);
}







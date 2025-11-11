/// @description set off nukkee

instance_destroy(other);
effect_create_depth(-100, ef_explosion, x, y, 2, c_red);

with(obj_parent_enemy)
{
	if(point_distance(obj_parent_player.x, obj_parent_player.y, x, y) <= obj_tuning.nuke_radius)
	{
		damage = 101;
	}
}





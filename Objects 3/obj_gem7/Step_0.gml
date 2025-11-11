/// @description move gems if magnet

if (obj_parent_player.has_magnet)
{
	if (point_distance(x, y, obj_parent_player.x, obj_parent_player.y) <= 300)
	{
		move_towards_point(obj_parent_player.x, obj_parent_player.y, 10);
	}
}




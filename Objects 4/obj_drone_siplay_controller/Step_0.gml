/// @description destroy the drone

drone_timer += -1;

if (drone_timer <= 2)
{
	if (instance_exists(obj_drone))
	{
		instance_destroy(obj_drone);
	}
	if (instance_exists(obj_parent_player))
	{
		obj_parent_player.has_drone = false;
	}
	instance_destroy();
}






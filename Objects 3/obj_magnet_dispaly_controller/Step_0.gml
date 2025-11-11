/// @description update timer
// destroy when done

magnet_timer += -1;

if(magnet_timer <= 2)
{
	//stop the parent having the magnet
	if (instance_exists(obj_parent_player))
	{
		obj_parent_player.has_magnet = false;
	}
	instance_destroy();
}






/// @description Insert description here
// You can write your code in this editor

if(start_timer)
{
	timer_counter++;	
}

if (damage >=100)
{
	obj_timer_controller.is_running = false;
	instance_change(obj_player_dead, true);
}

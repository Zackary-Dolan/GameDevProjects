/// @description inherit the event 

event_inherited();

if(instance_exists(obj_gem_parent))
{
	var _nearest_gem = instance_nearest(x, y, obj_gem_parent);
	move_towards_point(_nearest_gem.x, _nearest_gem.y, obj_tuning.max_speed_enemy8);
}
else if (point_distance(x, y, obj_parent_player.x, obj_parent_player.y) < obj_tuning.chase_range_enemy1)
{
	move_towards_point(obj_parent_player.x, obj_parent_player.y, obj_tuning.max_speed_enemy1);
}
else
{
	speed = obj_tuning.min_speed_enemy8;
	if (change_direction >= 300)
	{
		direction = random(360);
		change_direction = 0;
	}
}

if (direction <= 45 || direction >= 315)
{
	sprite_index = spr_enemy8_right;
}
else if (direction > 45 && direction <= 135)
{
	sprite_index = spr_enemy8_up;
}
else if (direction > 135 && direction <= 225)
{
	sprite_index = spr_enemy8_left;
}
else
{
	sprite_index = spr_enemy8_down
}

image_speed = 0.33;
draw_self();




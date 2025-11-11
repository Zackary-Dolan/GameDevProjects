/// @description inherit the event 

event_inherited();

if(instance_exists(obj_pickup_parent))
{
	var _nearest_pickup = instance_nearest(x, y, obj_pickup_parent);
	move_towards_point(_nearest_pickup.x, _nearest_pickup.y, obj_tuning.max_speed_enemy8);
}
else if (point_distance(x, y, obj_parent_player.x, obj_parent_player.y) < obj_tuning.chase_range_enemy7)
{
	move_towards_point(obj_parent_player.x, obj_parent_player.y, obj_tuning.max_speed_enemy7);
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
	sprite_index = spr_enemy10_right;
}
else if (direction > 45 && direction <= 135)
{
	sprite_index = spr_enemy10_up;
}
else if (direction > 135 && direction <= 225)
{
	sprite_index = spr_enemy10_left;
}
else
{
	sprite_index = spr_enemy10_down
}

image_speed = 0.33;
draw_self();




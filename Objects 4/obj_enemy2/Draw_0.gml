/// @description inherit the event 

event_inherited();

if (point_direction(x, y, obj_parent_player.x, obj_parent_player.y) < obj_tuning.chase_range_enemy2)
{
	move_towards_point(obj_parent_player.x, obj_parent_player.y, obj_tuning.max_speed_enemy2);
}
else
{
	speed = obj_tuning.min_speed_enemy2;
	if (change_direction >= 300)
	{
		direction = random(360);
		change_direction = 0;
	}
}

if (direction <= 45 || direction >= 315)
{
	sprite_index = spr_enemy2_right;
}
else if (direction > 45 && direction <= 135)
{
	sprite_index = spr_enemy2_up;
}
else if (direction > 135 && direction <= 225)
{
	sprite_index = spr_enemy2_left;
}
else
{
	sprite_index = spr_enemy2_down
}

image_speed = 0.33;
draw_self();




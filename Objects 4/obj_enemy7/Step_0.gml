/// @description inherit and update variables

event_inherited();

if (damage >= 100)
{
	instance_create_depth(x, y ,0, obj_gem7);
	effect_create_depth(-100, ef_firework, x, y, 1, c_white);
	instance_destroy();
}

can_shoot += 1;

if (can_shoot >= 0)
{
	if (point_distance(x, y, obj_parent_player.x, obj_parent_player.y)<= obj_tuning.shoot_range_enemy6)
	{
		var _enemy_shot = instance_create_depth(x, y, -10, obj_enemy_bullet);
		_enemy_shot.direction = point_direction(x, y, obj_parent_player.x, obj_parent_player.y);
		_enemy_shot.speed = obj_tuning.bullet_speed_enemy;
		audio_play_sound(snd_enemy_shot, 80, false);
		can_shoot = (120 + random(150)) * -1;
	}
}







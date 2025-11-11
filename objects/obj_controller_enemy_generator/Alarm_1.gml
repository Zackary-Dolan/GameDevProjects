/// @description Enemt 2

repeat(obj_tuning.enemy2)
{
	instance_create_depth(0, 0, 0, obj_enemy2);
}
alarm_set(0, 30 * obj_tuning.gentime_enemy2+random(120));







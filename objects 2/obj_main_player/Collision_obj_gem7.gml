/// @description collcet gems

audio_play_sound(snd_collect_gem, 10, false);
instance_destroy(other);
effect_create_below(ef_smoke, x, y, 2, c_white);
obj_collectables_controller.collected += obj_tuning.gem7;



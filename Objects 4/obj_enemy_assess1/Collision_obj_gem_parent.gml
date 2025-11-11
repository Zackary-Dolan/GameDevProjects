/// @description destroy the gems

audio_play_sound(snd_collect_gem, 10, false);
instance_destroy(other);
effect_create_below(ef_smoke, x, y, 2, c_black);

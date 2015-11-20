score += self.points_value;
instance_create(x, y, oExplodeNormal);
instance_destroy();

switch (irandom_range(0,2))
{
case 0: audio_play_sound(sound_explode_a1,1,false); break;
case 1: audio_play_sound(sound_explode_a2,1,false); break;
case 2: audio_play_sound(sound_explode_a3,1,false); break;
}

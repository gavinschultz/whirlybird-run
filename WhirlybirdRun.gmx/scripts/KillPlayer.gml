lives--;
instance_destroy();
instance_create(self.x, self.y, oExplodeHeli);
with (oGame)
{
    if (lives > 0)
        alarm[ALARM_RESPAWN] = 120;
    else
        alarm[ALARM_RESPAWN] = 80;
}

/*
switch (irandom_range(0,2))
{
case 0: audio_play_sound(sound_explode_c1,1,false); break;
case 1: audio_play_sound(sound_explode_c2,1,false); break;
case 2: audio_play_sound(sound_explode_c3,1,false); break;
}
*/

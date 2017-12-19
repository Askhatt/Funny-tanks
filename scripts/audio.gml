audio_em = argument[0];
sound = argument[1];

audio_emitter_pitch(audio_em, random_range(.8, 1.2));
audio_play_sound_on(audio_em, sound, false, 10);

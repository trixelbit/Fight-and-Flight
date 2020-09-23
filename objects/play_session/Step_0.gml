/// @description Insert description here
// You can write your code in this editor
frame_count++;
seconds = frame_count mod 30;
minutes = frame_count mod  1800;


ones.update(score mod 10);
tens.update(score > 9 ? floor((score mod 100) / 10) : 0);
hundreds.update(score > 99 ? floor((score mod 1000) / 100) : 0);
thousands.update(score > 999 ? floor((score mod 10000) / 1000)  : 0);




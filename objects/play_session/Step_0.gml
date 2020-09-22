/// @description Insert description here
// You can write your code in this editor
frame_count++;
seconds = frame_count mod 30;
minutes = frame_count mod  1800;



thousands.update(score > 999 ? round(score / 1000) : 0);
hundreds.update(score > 99 ? round(score / 100) : 0);
tens.update(score > 9 ? round(score / 10) : 0);
ones.update(score mod 10);

room_speed = 30;
cam = view_camera[0];
ww.gamepadID = 0;
draw_set_font(fntPlain);
worldGenPrep();
rollWorld = false;

screenTitle = instance_create_depth(0, 0, -8000, objScreenTitle);
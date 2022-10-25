




//if(keyboard_check_pressed(vk_enter)){
if(pc.pressedStart || pc.pressedJump){
	ww.rollWorld = true;
	instance_destroy();
}
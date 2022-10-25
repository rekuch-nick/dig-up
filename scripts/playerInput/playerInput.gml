function playerInput(){
	
	xInput = 0;
	yInput = 0;
	
	holdingJump = false;
	pressedJump = false;
	
	pressedStart = false;
	
	
	
	
	if(gamepad_button_check(ww.gamepadID, gp_padl) || 
						gamepad_axis_value(ww.gamepadID, gp_axislh) < -.5 ||
						keyboard_check(vk_left) || keyboard_check(ord("A"))){
		
		xInput --;
	}
	
	if(gamepad_button_check(ww.gamepadID, gp_padr) || 
						gamepad_axis_value(ww.gamepadID, gp_axislh) > .5 ||
						keyboard_check(vk_right) || keyboard_check(ord("D"))){
		
		xInput ++;
	}
	
	
	
	if(gamepad_button_check(ww.gamepadID, gp_padu) || 
						gamepad_axis_value(ww.gamepadID, gp_axislv) < -.5 ||
						keyboard_check(vk_up) || keyboard_check(ord("W"))){
		
		yInput --;
	}
	
	if(gamepad_button_check(ww.gamepadID, gp_padd) || 
						gamepad_axis_value(ww.gamepadID, gp_axislv) > .5 ||
						keyboard_check(vk_down) || keyboard_check(ord("S"))){
		
		yInput ++;
	}
	
	
	
	
	
	
	
	if(gamepad_button_check_pressed(ww.gamepadID, gp_face1) ||
						keyboard_check_pressed(vk_space)  ){
		pressedJump = true;
	}
	
	if(gamepad_button_check(ww.gamepadID, gp_face1) ||
						keyboard_check(vk_space)  ){
		holdingJump = true;
	}
	
	
	if(gamepad_button_check_pressed(ww.gamepadID, gp_start) ||
						keyboard_check_pressed(vk_enter)  ){
		pressedStart = true;
	}

}
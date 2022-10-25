function isPointOnScreen(a, b){
	
	if(b >= camera_get_view_y(ww.cam)){
		if(b <= camera_get_view_y(ww.cam) + camera_get_view_height(ww.cam)){
			return true;
		}
	}
	
	return false;
}
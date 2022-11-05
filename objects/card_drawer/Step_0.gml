/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if (instance_position(mouse_x,mouse_y,obj_collide)) {
	if (mouse_check_button(mb_left)) {
		mouse_colli = false;
		drag = true;
		startPoint = [mouse_x,mouse_y];
	} else {
		if (!mouse_colli) {
			//old_goal_y = goal_y;
			mouse_colli = true;
			old_y -= 20;
	
		}
	
	}

	} else {

	if (mouse_colli) {
		//old_goal_y = goal_y;
	
		mouse_colli = false;
		old_y += 20;
	
	}

}

//if (mouse_check_button(mb_left) && instance_position(mouse_x,mouse_y,self)) {
//	drag = true;
//	startPoint = [mouse_x,mouse_y];
//}

if (drag) {

	old_x += mouse_x - startPoint[0];
	old_y += mouse_y - startPoint[1];

	startPoint = [mouse_x,mouse_y];

	if (mouse_check_button_released(mb_left)) {
		drag = false;
	}
	
}


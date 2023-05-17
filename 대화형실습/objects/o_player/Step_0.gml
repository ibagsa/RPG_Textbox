/// @desc Every step
depth = -y;

actKey = keyboard_check(vk_space);

if(!global.onGamePause){
	if(keyboard_check(vk_left)) {
		x -= 4;
		image_angle = 180;
		dir = 180;
	}
	if(keyboard_check(vk_right)) {
		x +=4;
		image_angle = 0;
		dir = 0;
	}
	if(keyboard_check(vk_up)) {
		y -= 4;
		image_angle = 90;
		dir = 90;
	}
	if(keyboard_check(vk_down)) {
		y += 4;
		image_angle = 270;
		dir = 270;
	}
	
	
	if(actKey){
		/*var _x = lengthdir_x, _y = lengthdir_y;
		switch(dir){
			case 0: _x+=16; break;
			case 1: _y-=16; break;
			case 2: _x-=16; break;
			case 3: _y+=16; break;
		}*/
		
		var idd = collision_point(x,y,all,false,true);
		if(idd != noone){
			if(idd.object_index == o_sign){
				for(var i=0; i<array_length(idd.myText);i++){
					show_textbox(0, idd.myText[i]);
				}
			} else if(is_object_can_interact(idd.object_index)){
				npc_text_list(idd.object_index);
			} 
		}
	}
}


function is_object_can_interact(obj){
	return object_get_parent(obj) == o_npc_abs;
}
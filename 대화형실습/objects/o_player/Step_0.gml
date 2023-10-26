/// @desc Every step 

depth = -y;

get_key();

if(!global.onGamePause){
	//Move
	if(leftKey) {
		x -= moveSpd;
		image_angle = 180;
		dir = 180;
	}
	if(rightKey) {
		x += moveSpd;
		image_angle = 0;
		dir = 0;
	}
	if(upKey) {
		y -= moveSpd;
		image_angle = 90;
		dir = 90;
	}
	if(downKey) {
		y += moveSpd;
		image_angle = 270;
		dir = 270;
	}
	
	//All Communication
	if(actKey){
		var idd = check_collision(self);
		if(idd != noone){
			if(idd == o_sign){
				for(var i=0; i<array_length(idd.myText);i++){
					show_textbox(0, idd.myText[i]);
				}
			} else if(object_get_parent(idd) == o_npc_abs){
				npc_text_list(idd);
			}
		}
	}
}
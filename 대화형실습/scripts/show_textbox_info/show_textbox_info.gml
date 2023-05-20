///@desc show_textbox_info()

//

function show_textbox_info(){
	function textbox_info(txt) constructor{
		myname = txt;
		myface[0] = noone;
		for(var i=1; i<argument_count; i++){
			myface[i-1] = argument[i];
		}
	}
	
	var maxInfo = 5;
	for(var i=0; i < maxInfo; i++){
		switch(i){
			case 0:
			TextboxInfo[i] = new textbox_info(NULL,noone); break;
			case 1: 
			TextboxInfo[i] = new textbox_info("하늘",s_face1,s_face1_1); break;
			case 2:
			TextboxInfo[i] = new textbox_info("초록",s_face2) break;
			case 3:
			TextboxInfo[i] = new textbox_info("노랑",s_face3) break;
			default: break;
		}
	}
}
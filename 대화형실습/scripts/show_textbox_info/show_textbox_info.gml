///@desc show_textbox_info()

//구조체를 활용해 텍스트박스에 출력될 캐릭터 정보를 받아옵니다.

function show_textbox_info(){
	function textbox_info(txt) constructor{
		myname = txt;
		myface[0] = noone;
		for(var i=1; i<argument_count; i++){
			myface[i-1] = argument[i];
		}
	}
	
	var maxInfo = 6;
	for(var i=0; i < maxInfo; i++){
		switch(i){
			case 0:
			TextboxInfo[i] = new textbox_info(NULL,noone); break;
			case 1: 
			TextboxInfo[i] = new textbox_info("하늘",s_face1, s_face1_1); break;
			case 2:
			TextboxInfo[i] = new textbox_info("초록",s_face2, s_face2_1); break;
			case 3:
			TextboxInfo[i] = new textbox_info("노랑",s_face3, s_face3_1, s_face3_2); break;
			case 4:
			TextboxInfo[i] = new textbox_info("분홍",s_face4,s_face4_1); break;
			case 5:
			TextboxInfo[i] = new textbox_info("검정",s_face5); break;
			default: break;
		}
	}
}
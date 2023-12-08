///@desc show_textbox_info()

//구조체를 활용해 텍스트박스에 출력될 캐릭터 정보를 받아옵니다.

function show_textbox_info(){
	function textbox_info(txt) constructor{
		myname = txt;
		myface[0] = noone;
		for(var i=1; i<(argument_count); i++){
			myface[i-1] = argument[i];
		}
	}
	
	TextboxInfo[0] = new textbox_info(NULL,noone);
	TextboxInfo[1] = new textbox_info("하늘",s_face1, s_face1_1);
	TextboxInfo[2] = new textbox_info("초록",s_face2, s_face2_1);
	TextboxInfo[3] = new textbox_info("노랑",s_face3, s_face3_1, s_face3_2);
	TextboxInfo[4] = new textbox_info("핑크",s_face4,s_face4_1, s_face4_2,s_face4_3);
	TextboxInfo[5] = new textbox_info("검정",s_face5);
}
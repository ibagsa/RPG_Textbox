///@desc show_textbox()
///@arg profile
///@arg faceType
///@arg msg...

//Activates a o_textBox based on the data you have received.
//입력받은 데이터를 기반으로 o_textBox를 활성화합니다.

function show_textbox(profile){
	var info = TEXTBOX.TextboxInfo[profile];
	var textStart = 1;
	var faceType = 0;
	
	if(is_real(argument[1])){
		faceType = argument[1];
		textStart++;
	}
	
	for(var i=textStart; i<argument_count; i++){
		ds_queue_enqueue(TEXTBOX.list_say, argument[i]);
		ds_queue_enqueue(TEXTBOX.list_face,info.myface[faceType]);
		ds_queue_enqueue(TEXTBOX.list_name,info.myname);
	}
	
	if(TEXTBOX.mySay == NULL){
		global.onGamePause = true;
		with(TEXTBOX){
			mySay = ds_queue_dequeue(list_say);
			myFace = ds_queue_dequeue(list_face);
			myName = ds_queue_dequeue(list_name);
			chatOn = true;
			visible = true;
			alarm[0] = chatDelay;
		}
	}
}
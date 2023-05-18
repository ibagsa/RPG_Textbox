///@desc show_textbox()
///@arg profile
///@arg faceType
///@arg msg...

//프로필 사진을 입력받은 후 자료구조 큐를 사용하여 메시지를 입력받습니다.

function show_textbox(profile){
	var info = o_textBox.TextboxInfo[profile];
	var textStart = 1;
	var faceType = 0;
	
	if(is_real(argument[1])){
		faceType = argument[1];
		textStart++;
	}
	
	for(var i=textStart; i<argument_count; i++){
		ds_queue_enqueue(o_textBox.list_say, argument[i]);
		ds_queue_enqueue(o_textBox.list_face,info.myface[faceType]);
		ds_queue_enqueue(o_textBox.list_name,info.myname);
	}
	
	if(o_textBox.mySay == NULL){
		global.onGamePause = true;
		with(o_textBox){
			mySay = ds_queue_dequeue(list_say);
			myFace = ds_queue_dequeue(list_face);
			myName = ds_queue_dequeue(list_name);
			chatOn = true;
			visible = true;
			alarm[0] = chatDelay;
		}
	}
}
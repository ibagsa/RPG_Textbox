///@desc npc_text_list()
///@arg object

//Copy the message data from the NPC to output to the temporary buffer and output the first message.
//임시 버퍼(temp)에 출력할 NPC의 메세지 데이터 복사 및 기본 메세지를 출력합니다.

function npc_text_list(idd){
	var profile = idd.profile;
	TEXTBOX.temp_queue = ds_queue_create();
	
	ds_queue_copy(TEXTBOX.temp_queue, idd.first_queue);
	
	while(!ds_queue_empty(TEXTBOX.temp_queue)){
		show_textbox(profile, ds_queue_dequeue(TEXTBOX.temp_queue));
	}
	
	event_perform_object(idd, ev_other, ev_user1);
}
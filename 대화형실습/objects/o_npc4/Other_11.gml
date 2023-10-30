/// @desc Dequeue branched message
//ev_other , ev_user1
//Outputs branched message.
//o_npc4(분홍)의 분기형 메세지를 출력합니다.

with(o_npc4){
	if(eventCount == 0){
		show_textbox(profile,1,"어라, 넌 처음 보는 얼굴인걸???");
	}
}
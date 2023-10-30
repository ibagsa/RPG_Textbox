/// @desc Dequeue branched message
//ev_other , ev_user1
//Outputs branched message.
//o_npc2(초록)의 분기형 메세지를 출력합니다.

with(o_npc2){
	if(o_player.money > 249){
		show_textbox(profile,"역시 돈이 많구나.","|","내 물건을 사지 않을래?","좋아","싫어");
		eventCount = 0;
	} else{
		if(eventCount == 0){
			show_textbox(profile,1,"...넌 예외네.", "돈 없는 녀석이랑 할 말은 없어.");
			eventCount++;
		} else{
			show_textbox(profile,1,"...뭐야, 또 너였냐.","더 이상 내게 볼 일은 없을텐데?");
		}
	}
}
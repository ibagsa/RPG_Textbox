/// @desc Dequeue answer message
//ev_other , ev_user0
//Outputs the answer to the question.
//o_npc1(초록)의 질문에 대한 답변을 출력합니다.
with(o_npc1){
	switch(TEXTBOX.choiceThis){
		case 0:
		show_textbox(2, "좋아. 거래 완료.");
		o_player.money -= 250;
		break;
	
		case 1:
		show_textbox(2, "아쉬운걸.");
		break;
	
		default:
		break;
	}
}
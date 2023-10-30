/// @desc Dequeue answer message
//ev_other , ev_user0
//Outputs the answer to the question.
//o_player(주인공)의 질문에 대한 답변을 출력합니다.

with(o_player){
switch(TEXTBOX.choiceThis){
	case 0:
	if(eventCount == 0) show_textbox(5, "내가 아직 잠에서 덜 깬 건가...?");
	break;
	
	case 1:
	if(eventCount == 0) show_textbox(5, "드디어 나도 꿈에 그리던 이세계 라이프를!");
	break;
	
	default:
	break;
}
}
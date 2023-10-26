/// @desc Dequeue answer message
//ev_other , ev_user0
//Outputs the answer to the question.
//o_npc2(노랑)의 질문에 대한 답변을 출력합니다.

switch(TEXTBOX.choiceThis){
	case 0:
	show_textbox(3, "자 여기, 돈!");
	show_textbox(3,2,"혹시나 해서 말하는데, 그냥 남아있던 자투리 돈일 뿐이니까!", "착각하면 가만 안 둬!!!!!");
	o_player.money += 50;
	break;
		
	case 1:
	show_textbox(3,"뭐,뭐야?!?! 나도 너 따위한테 줄 생각 없었거든??");
	break;
		
	case 2:
	show_textbox(3, "...........................뭐...");
	show_textbox(3,1, "뭐어ㅓ어어어어어어어어어어ㅓ어어어어어어어어??????");
	show_textbox(3,2, "그..그런거...... 나,난 모,몰라.....");
	break;
		
	default:
	break;
}
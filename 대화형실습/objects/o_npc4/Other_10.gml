/// @desc Dequeue answer message
//ev_other , ev_user0
//Outputs the answer to the question.
//o_npc4(분홍)의 질문에 대한 답변을 출력합니다.

with(o_npc4){
switch(TEXTBOX.choiceThis){
	case 0:
	if(eventCount == 0){
		show_textbox(profile, "꺄!!!!!","이제부터 우린 짱친이야!!!");
		eventCount = 1;
	} else if(eventCount == 2){
		show_textbox(profile,"앗 정말???","|","그럼 이제부터 나랑 짱친 해주는거야???","그래.","그건 좀...");
		eventCount = 3;
	} else if(eventCount == 3){
		show_textbox(profile, "꺄!!!!!","이제부터 우린 짱친이야!!!");
		eventCount = 1;
	}
	break;
		
	case 1:
	if(eventCount == 0){
		show_textbox(profile,"앗 조금 당황했구나;;;;;");
		eventCount = 2;
	}else if(eventCount == 2){
		show_textbox(profile,"알았어........... 앞으로 조심할게........");
	} else if(eventCount == 3){
		show_textbox(profile,"ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ");
		eventCount = 2;
	}
	break;
		
	case 2:
	break;
		
	default:
	break;
}
}
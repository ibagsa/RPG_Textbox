/// @desc Dequeue branched message
//ev_other , ev_user1
//Outputs branched message.
//o_npc4(분홍)의 분기형 메세지를 출력합니다.

with(o_npc4){
	if(eventCount == 0){
		show_textbox(profile,1,"어라, 넌 처음 보는 얼굴인걸???","그런데 내게 말을 걸었다는 것은........");
		show_textbox(profile,"|","그렇구나!!! 너도 나와 친구가 되고 싶은 거지???","응. 맞아.","...갑자기?");
	} else if(eventCount == 1){
		show_textbox(profile,"|","이제 뭐 하고 놀까?!?!","우선 마을부터 둘러볼까?","우리, 구면인가?");
	}else if(eventCount == 2){
		show_textbox(profile,"|","아깐 당황했지...? 미안해.","괜찮아.","좀 과했어.");
	}
}
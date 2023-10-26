///@ desc player_state()

//Set o_player base state.
//플레이어의 기본 스테이트를 설정합니다.

function player_state(){
	global.onGamePause = false;
	
	dir = 0;
	moveSpd = 4;
	money = 0;
}
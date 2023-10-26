///@desc get_key()

//Set received key and check that key.
//입력받는 키를 지정하고 그 키가 눌리면 1을, 안 눌리면 0을 반환합니다.

function get_key(){
	leftKey = max(keyboard_check(vk_left),keyboard_check(ord("A")),0);
	rightKey = max(keyboard_check(vk_right),keyboard_check(ord("D")),0);
	upKey = max(keyboard_check(vk_up),keyboard_check(ord("W")),0);
	downKey = max(keyboard_check(vk_down),keyboard_check(ord("S")),0);
	
	leftPressed = max(keyboard_check_pressed(vk_left),keyboard_check_pressed(ord("A")),0);
	rightPressed = max(keyboard_check_pressed(vk_right),keyboard_check_pressed(ord("D")),0);
	upPressed = max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);
	downPressed = max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);
	
	actKey = max(keyboard_check(vk_space),0);
}
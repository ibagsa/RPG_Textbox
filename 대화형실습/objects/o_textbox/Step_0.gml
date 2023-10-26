/// @desc Every Step

get_key();

if(inChoice == ON){
	if(leftPressed){
		if(choiceThis > 0){
			choiceThis--;
		}
	}
	if(rightPressed){
		if(choiceThis < (choiceCount - 1)){
			choiceThis++;
		}
	}
}
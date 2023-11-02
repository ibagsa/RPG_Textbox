/// @desc Text draw

draw_self();
draw_set_font(Font1);
if(myFace == noone){
	if(myName == NULL){
		draw_text_ext(x+16, y+16, drawSay, 32, 912);
	} else{
		draw_text_ext(x+16, y+16, myName, 32, 912);
		draw_text_ext(x+16, y+48, drawSay, 32, 912);
	}
} else{
	draw_sprite(myFace, 0, x+16, y+16);
	draw_text_ext(x+256, y+16, myName, 32, 672);
	draw_text_ext(x+256, y+48, drawSay, 32, 672); //(x,y,string,sep(줄의 높이),w(줄의 길이))
}
if(inChoice == ON){
	for(var i=0; i<choiceCount; i++){
		if(choiceThis == i){
			draw_set_color(c_black);
		}
		draw_text_ext(x+272+i*750/choiceCount, y+192, choices[i], 30, 300);
		draw_set_color(c_white);
	}
	draw_sprite_ext(s_pointer, 0, x+256+choiceThis*(750/choiceCount), y+194,1,1,0,-1,1);
}
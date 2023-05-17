/// @desc Text draw
draw_self();
draw_set_font(Font1);
if(myFace == noone){
	draw_text_ext(x+16, y+16, drawSay, 20, 912);
} else{
	draw_sprite(myFace,0,x+16,y+16);
	draw_text_ext(x+256, y+16, drawSay, 20, 672); //(x,y,string,sep(줄의 높이),w(줄의 길이))
}
if(inChoice){
	for(var i = 0; i<choiceCount; i++){
		draw_text_ext(x+50+i*1000/choiceCount,y,choices[i],30,300);
	}
}
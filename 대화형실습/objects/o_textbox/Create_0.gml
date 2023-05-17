/// @desc Initalize
#macro NULL ""

image_xscale = 30;
image_yscale = 8;

show_textbox_info();
list_say = ds_queue_create();
list_face = ds_queue_create();
list_name = ds_queue_create();

myName = NULL;
mySay = NULL;
myFace = noone;
drawSay = "";
drawCount = 0;
chatDelay = 3;

choiceCount = 3;
inChoice = false;
choices = array_create(choiceCount,"");

chatOn = false;
visible = false;
/// @desc Initalize

#macro NULL ""
#macro TEXTBOX o_textBox
#macro READY -1
#macro ON 1
#macro OFF 0

image_xscale = 30;
image_yscale = 8;

TextboxInfo = 0;
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

inChoice = OFF;
choiceCount = 0;
choiceThis = 0;
choices = array_create(choiceCount,NULL);

//Set temp for NPC text list
temp_queue = 0;

chatOn = false;
visible = false;
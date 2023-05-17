///@desc npc_text_list()
function npc_text_list(idd){
	var temp_queue = ds_queue_create();
	var profile = idd.profile;
	ds_queue_copy(temp_queue, idd.first_queue);
	while(!ds_queue_empty(temp_queue)){
		show_textbox(profile, ds_queue_dequeue(temp_queue));
	}
}
///@desc npc_list_create()
///@arg list
///@arg answer
function npc_list_create(listMax,answerMax){
	first_queue = ds_queue_create();

	for(var i=0; i<listMax; i++){
		for(var j=0; j<answerMax; j++){
			line_queue[i][j] = ds_queue_create();
		}
	}
}
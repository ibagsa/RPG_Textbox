/// @desc Initalize
npc_list_create(2,3);

ds_queue_enqueue(first_queue,"안녕","오늘 날씨가 참 좋다.");

ds_queue_enqueue(line_queue[0][0],"넌 돈이 많구나!","내 물건을 사지 않을래?");
ds_queue_enqueue(line_queue[0][1],"좋아, 거래 완료!");
ds_queue_enqueue(line_queue[0][2],"아쉬운걸.");

ds_queue_enqueue(line_queue[1][0],"뭐야 이거 돈도없는 찐찌버거였네.","꺼져");
ds_queue_enqueue(line_queue[1][1],"아직도 돈이 없잖아.","자꾸 질척거릴래?");
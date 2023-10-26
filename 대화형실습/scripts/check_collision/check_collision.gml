///@desc check_collision()
///@arg obj

//Returns the instance that collided with the object.
//객체와 충돌한 인스턴스를 반환합니다.

function check_collision(idd){
	var col = 0;
	
	with(idd){
		col = collision_point(x,y,all,false,true);
	}
	
	if(col != noone){
		return col.object_index;
	} else{
		return col;
	}
}
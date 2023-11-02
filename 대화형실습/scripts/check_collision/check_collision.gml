///@desc check_collision()
///@arg obj
///@arg bool

//Returns the instance that collided with the object.
//객체와 충돌한 인스턴스를 반환합니다.

function check_collision(obj, inObj){
	var col = 0;
	
	with(obj){
		col = collision_point(x,y,all,false,true);
	}
	
	if(inObj && col != noone){
		return col.object_index;
	} else{
		return col;
	}
}
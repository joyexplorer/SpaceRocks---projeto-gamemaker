event_inherited();

image_index = HP - 1;

if(!instance_exists(obj_ship)) exit;
// if player is inside range
if(point_distance(x, y, obj_ship.x, obj_ship.y) < 250){
    //turn to look at the player ship
    var new_angle = point_direction(x, y, obj_ship.x, obj_ship.y);
    image_angle = new_angle;
    new_angle = image_angle - angle_difference(image_angle, new_angle);
    image_angle = lerp(image_angle, new_angle, 0.1);
    direction = image_angle;   

    speed += 0.01;
    
}else{//otherwise, no change
    speed = lerp(speed, originalSpeed, 0.1);
}

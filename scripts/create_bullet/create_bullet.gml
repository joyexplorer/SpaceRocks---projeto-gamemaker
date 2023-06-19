//@description create bullet
///@arg direction
///@arg speed
///@arg faction 
///@arg _gun_type*

function create_bullet(_dir, _spd, _fac){
    
  //var _dir = argument[0];
  //var _spd = argument[1];
  //var _fac = argument[2];
  //var _creator = argument[3]; 
  
  var _gun_type = -1; 
  if(argument_count > 3) _gun_type = argument[3];
  
  //choose gun type
  switch(_gun_type){
      
      case powerups.three_bullets:
        var inst = instance_create_layer(x,y,"Instances", obj_bullet);
        initialise_bullet(_dir, _spd, _fac, inst);
        
      case powerups.two_bullets:
        audio_play_sound(snd_zap, 1, false);
        
        var _sep = 12;
        
        var inst = instance_create_layer(x+lengthdir_x(_sep, _dir+90),y+lengthdir_y(_sep, _dir+90),"Instances", obj_bullet);
        initialise_bullet(_dir, _spd, _fac, inst);
        
        var inst = instance_create_layer(x+lengthdir_x(_sep, _dir-90),y+lengthdir_y(_sep, _dir-90),"Instances", obj_bullet);
        initialise_bullet(_dir, _spd, _fac, inst);
        break;
        
      case powerups.four_bullets:
        audio_play_sound(snd_zap, 1, false);
        
        var _sep = 7, bullet_angle;
        
        var i = 0;  repeat(4){
             bullet_angle = _dir + (i*90);
             var inst = instance_create_layer(
                 x+lengthdir_x(_sep, bullet_angle),
                 y+lengthdir_y(_sep, bullet_angle),
                 "Instances", obj_bullet
             );
             initialise_bullet(bullet_angle, _spd, _fac, inst);
             i++;
        }   
        break;
     
      case powerups.star_bullets:
       audio_play_sound(snd_zap, 1, false);
        
        var _sep = 7, bullet_angle;
        
        var i = 0;  repeat(8){
             bullet_angle = _dir + (i*45);
             var inst = instance_create_layer(
                 x+lengthdir_x(_sep, bullet_angle),
                 y+lengthdir_y(_sep, bullet_angle),
                 "Instances", obj_bullet
             );
             initialise_bullet(bullet_angle, _spd, _fac, inst);
             i++;
        }
        break;
        
      case powerups.laser_bullets:
       audio_play_sound(snd_laser, 1, false); 
       var inst = instance_create_layer(x,y,"Instances", obj_laser);
       initialise_bullet(_dir, _spd, _fac, inst);   
        break;
        
      default:
        audio_play_sound(snd_zap, 1, false);
        var inst = instance_create_layer(x,y,"Instances", obj_bullet);
        initialise_bullet(_dir, _spd, _fac, inst);
        break;
  }
   
}

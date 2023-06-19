// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function initialise_bullet(_dir, _spd, _fac, inst){
     var _creator = self;
     with(inst){
                direction = _dir;
                if(object_index == obj_bullet) speed = _spd;
                faction = _fac;
                creator = _creator;
       
                if(faction == factions.ally) image_blend = c_aqua;
                else if(faction == factions.enemy) image_blend = c_red;
        }
}
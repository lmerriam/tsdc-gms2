scr_damage(other,damage/counter);

counter += 1;

//with (other) {
//	var spear = other;
//	var hspd = lengthdir_x(32,spear.image_angle);
//	var vspd = lengthdir_y(32,spear.image_angle);
//	spear.second_victim = scr_hitscan(x,y,x+hspd,y+vspd,Enemy_Parent,false,true);
//}

//if (second_victim != noone) {
//	other.state = scr_blank;
//	second_victim.state = scr_blank;
//	scr_damage(second_victim,damage);
//	scr_bloodspot(x,y,1);
//	var inactive_spear = instance_create_layer(x+(second_victim.x-x),y+(second_victim.y-y),"entities",Attack_Spear_Inactive)
//	inactive_spear.phy_rotation = phy_rotation;
//	inactive_spear.first_victim = id;
//	inactive_spear.second_victim = second_victim;
//	instance_destroy();
//}
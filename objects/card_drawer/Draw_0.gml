/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

gpu_set_blendenable(false)
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0, room_width,room_height, false);

offset3_x =  (layer3_x - mouse_x) / index3_speed;
offset3_y = (layer3_y - mouse_y) / index3_speed;
offset3_x = 
(abs(offset3_x) < border_value) ? offset3_x :
sign(offset3_x) * border_value;
offset3_y = 
(abs(offset3_y) < border_value) ? offset3_y :
sign(offset3_y) * border_value;
layer3_x = lerp(layer3_x,old_x + offset3_x,lerp_speed);
layer3_y = lerp(layer3_y,old_y + offset3_y,lerp_speed);
// layer sep

draw_set_alpha(1);
draw_sprite(layer_mask,0, layer3_x,layer3_y);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

offset0_x =  (layer0_x - mouse_x) / index0_speed;
offset0_y = (layer0_y - mouse_y) / index0_speed;
offset0_x = 
(abs(offset0_x) < border_value) ? offset0_x :
sign(offset0_x) * border_value;
offset0_y = 
(abs(offset0_y) < border_value) ? offset0_y :
sign(offset0_y) * border_value;
layer0_x = lerp(layer0_x,old_x + offset0_x,lerp_speed);
layer0_y = lerp(layer0_y,old_y + offset0_y,lerp_speed);
// layer sep

offset1_x =  (layer1_x - mouse_x) / index1_speed;
offset1_y = (layer1_y - mouse_y) / index1_speed;
offset1_x = 
(abs(offset1_x) < border_value) ? offset1_x :
sign(offset1_x) * border_value;
offset1_y = 
(abs(offset1_y) < border_value) ? offset1_y :
sign(offset1_y) * border_value;
layer1_x = lerp(layer1_x,old_x + offset1_x,lerp_speed);
layer1_y = lerp(layer1_y,old_y + offset1_y,lerp_speed);
// layer sep


offset2_x =  (layer2_x - mouse_x) / index2_speed;
offset2_y = (layer2_y - mouse_y) / index2_speed;
offset2_x = 
(abs(offset2_x) < border_value) ? offset2_x :
sign(offset2_x) * border_value;
offset2_y = 
(abs(offset2_y) < border_value) ? offset2_y :
sign(offset2_y) * border_value;
layer2_x = lerp(layer2_x,old_x + offset2_x,lerp_speed);
layer2_y = lerp(layer2_y,old_y + offset2_y,lerp_speed);
// layer sep



// set mask position, then draw all layers here
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite(layer0,0, layer0_x,layer0_y);
draw_sprite(layer1,0, layer1_x,layer1_y);
draw_sprite(layer2,0, layer2_x,layer2_y);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_sprite(layer3,0, layer3_x,layer3_y);







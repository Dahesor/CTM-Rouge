playsound ui.button.click master @s ~ ~ ~ 1 1.3 1
$function rcore:menu/tutorial/wools/$(color)


return 1

give @s cherry_sign[block_entity_data={id:"sign",front_text:{messages:["",{text:"[点击查看]",color:"gray",click_event:{action:"run_command",command:"/function rcore:menu/tutorial/wool_redirect {color:'black'}"}},"",""]}}]
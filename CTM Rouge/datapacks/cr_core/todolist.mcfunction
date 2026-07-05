#1. 当传送站正在被占领时，在地图上标记

give @s oak_sign[block_entity_data={id:"sign",front_text:{messages:["",{text:"红队",click_event:{action:"run_command",command:"function _dev:team/red"}},"",""],color:"red",has_glowing_text:true}}]
give @s oak_sign[block_entity_data={id:"sign",front_text:{messages:["",{text:"蓝队",click_event:{action:"run_command",command:"function _dev:team/blue"}},"",""],color:"blue",has_glowing_text:true}}]
give @s oak_sign[block_entity_data={id:"sign",front_text:{messages:["",{text:"黄队",click_event:{action:"run_command",command:"function _dev:team/yellow"}},"",""],color:"yellow",has_glowing_text:true}}]
give @s oak_sign[block_entity_data={id:"sign",front_text:{messages:["","绿队","暂时禁用",""],color:"green",has_glowing_text:true},is_waxed:true}]
give @s oak_sign[block_entity_data={id:"sign",front_text:{messages:["",{text:"旁观",click_event:{action:"run_command",command:"function _dev:team/spectate"}},"",""],color:"white",has_glowing_text:true}}]

give @s oak_sign[block_entity_data={id:"sign",front_text:{messages:["",{text:"开始游戏",click_event:{action:"run_command",command:"function _dev:team/start"}},"",""],color:"white",has_glowing_text:true}}]

give @s bamboo_sign[block_entity_data={id:"sign",front_text:{messages:["",{translate:"sign.to_floor_1"},{translate:"sign.no_return"},""],color:"white",has_glowing_text:true},is_waxed:true}]

give @s bamboo_sign[block_entity_data={id:"sign",front_text:{messages:["",{translate:"sign.need_key.1_2"},{translate:"sign.click_to_unlock",color:"green",click_event:{action:"run_command",command:"function rcore:core/stairs/secrect/sign"}},""],color:"white",has_glowing_text:true},is_waxed:true}]

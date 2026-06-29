data modify storage ram: dialog.dialog set value {type:"notice",title:{translate:"gui.tp_page.title",color:"green"},body:[{type:"plain_message",contents:{font:"crouge:map",text:"",shadow_color:0},width:300}],pause:false,after_action:"none",action:{action:{type:"run_command",command:"/trigger dialog set 2"},label:{"translate":"gui.cancel"}}}

execute unless score @s join_game matches 1.. run data remove storage ram: dialog.dialog.yes.tooltip

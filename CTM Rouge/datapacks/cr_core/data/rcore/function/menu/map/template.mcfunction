data modify storage ram: dialog.dialog set value {type:"confirmation",title:"地图",body:[{type:"plain_message",contents:{font:"crouge:map",text:"",shadow_color:0},width:300}],pause:false,after_action:"none",no:{action:{type:"run_command",command:"/trigger dialog set 2"},label:{"translate":"gui.done"}},yes:{action:{type:"run_command",command:"/trigger dialog set 10"},label:{"translate":"gui.tp"},tooltip:{translate:"gui.tp.tip"}}}

execute unless score @s join_game matches 1.. run data remove storage ram: dialog.dialog.yes.tooltip

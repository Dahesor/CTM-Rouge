data modify storage ram: dialog.dialog set value {type:"confirmation",\
    pause:false,after_action:"none",\
    title:{translate:"menu.map.title",with:["0"]},\
    body:[\
        {type:"plain_message",contents:{font:"crouge:map",text:"",shadow_color:0},width:300},\
    ],\
    no:{action:{type:"run_command",command:"/trigger dialog set 2"},label:{"translate":"gui.done"}},\
    yes:{action:{type:"run_command",command:"/trigger dialog set 10"},label:{"translate":"gui.tp"},tooltip:{translate:"gui.tp.tip"}}\
}

data modify storage ram: dialog.dialog.body[0].contents[3] set from storage run: _buttonSpace

execute unless score @s join_game matches 1.. run data remove storage ram: dialog.dialog.yes.tooltip

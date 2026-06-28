data modify storage ram: dialog.dialog set value {type:"notice",title:"地图",body:[{type:"plain_message",contents:{font:"crouge:map",text:"",shadow_color:0},width:300}],pause:false,after_action:"none",action:{action:{type:"run_command",command:"/trigger dialog set 2"},label:{"translate":"gui.done"}}}
data modify storage ram: dialog.dialog.body[0].contents set from storage ram: thisPlMap.compiled

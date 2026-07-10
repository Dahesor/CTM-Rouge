execute if score game data matches 1.. run return run dialog show @s {type:"confirmation",title:"结束游戏",no:{label:{translate:"gui.cancel"}},yes:{label:"§c强制结束",action:{type:"run_command",command:"/function _dev:terminate"}},body:[{type:"plain_message",contents:{text:"强制结束当前游戏？",color:"red"}}],pause: false}

dialog show @s {type:"confirmation",title:"开始游戏",inputs:[{key:"seed",type:"text",label:{text:"种子（正整数，输入-1以随机）",color:"aqua"},initial:"-1",label_visible:true,max_length:10,width:200}],no:{label:{translate:"gui.cancel"}},yes:{label:"§a开始",action:{type:"dynamic/run_command",template:"/trigger input set $(seed)"}},body:[{type:"plain_message",contents:{text:"",color:"red"}}],pause: false}

scoreboard players set @s reciving -1
scoreboard players enable @s input

dialog show @s {type:"confirmation",title:"开始游戏",inputs:[{key:"seed",type:"text",label:{text:"种子（正整数，输入-1以随机）",color:"aqua"},initial:"-1",label_visible:true,max_length:10,width:200}],no:{label:{translate:"gui.cancel"}},yes:{label:"§a开始",action:{type:"dynamic/run_command",template:"/trigger input set $(seed)"}},body:[{type:"plain_message",contents:{text:"请确认是否有正在进行的游戏\n暂未制作防呆机制",color:"red"}}],pause: false}

execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.1 1

scoreboard players set @s reciving -1
scoreboard players enable @s input
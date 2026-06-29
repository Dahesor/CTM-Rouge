data modify storage ram: dialog.dialog set value {type:"confirmation",title:"重新上架",yes:{action:{type:"run_command",command:"/trigger dialog set 101"},label:"购买"},no:{action:{type:"run_command",command:"/trigger dialog set 999"},label:{translate:"gui.cancel"}},pause: false, after_action:"close",body:[{type:"plain_message",contents:{translate:"shop.price",color:"green",with:[""]}}]}


execute store result storage ram: i.i int 1 run scoreboard players get @e[type=interaction,tag=__target_shop,limit=1,distance=..20,tag=cr.shop_interact.fill] leave_game

data modify storage ram: dialog.dialog.body[0].contents.with[0] set string storage ram: i.i

execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.2 1
function rcore:menu/render/dialog with storage ram: dialog
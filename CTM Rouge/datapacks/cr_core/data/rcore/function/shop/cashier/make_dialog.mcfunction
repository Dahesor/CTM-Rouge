data modify storage ram: dialog.dialog set value {type:"confirmation",title:"物品详情",yes:{action:{type:"run_command",command:"/trigger dialog set 100"},label:"购买"},no:{action:{type:"run_command",command:"/trigger dialog set 999"},label:{translate:"gui.cancel"}},pause: false, after_action:"close",body:[{type:"item",item:{id:"barrier"},show_tooltip:true},{type:"plain_message",contents:{translate:"shop.price",color:"green",with:[""]}}]}


data modify storage ram: dialog.dialog.body[0].item set from storage ram: shopStock.item.stack
data modify storage ram: dialog.dialog.body[1].contents.with[0] set string storage ram: shopStock.price

execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.2 1
function rcore:menu/render/dialog with storage ram: dialog
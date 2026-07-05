scoreboard players operation #minute calculator.cr = time data
scoreboard players operation #minute calculator.cr /= #1200 calculator.cr
scoreboard players operation #second calculator.cr = time data
scoreboard players operation #second calculator.cr %= #1200 calculator.cr
scoreboard players operation #second calculator.cr /= #20 calculator.cr

data modify storage sidebar.dah:data ui set value {\
    title:[{text:"",color:"white",shadow_color:-14342875},"0",":","0",""],\
    lore:[\
        "",\
        {text:"红队: ",color:"red",extra:[{text:"0",shadow_color:-1407772905}]},\
        {text:"蓝队: ",color:"#279eff",extra:[{text:"0",shadow_color:-1407772905}]},\
        {text:"黄队: ",color:"yellow",extra:[{text:"0",shadow_color:-1407772905}]},\
        {text:"绿队: ",color:"green",extra:[{text:"0",shadow_color:-1407772905}]}\
    ]\
}




execute if score #second calculator.cr matches 10.. run data modify storage sidebar.dah:data ui.title[3] set value ""
execute store result storage ram: i.i int 1 run scoreboard players get #minute calculator.cr
data modify storage sidebar.dah:data ui.title[1] set string storage ram: i.i
execute store result storage ram: i.i int 1 run scoreboard players get #second calculator.cr
data modify storage sidebar.dah:data ui.title[4] set string storage ram: i.i

execute store result storage ram: i.i int 1 run scoreboard players get score.red data
data modify storage sidebar.dah:data ui.lore[1].extra[0].text set string storage ram: i.i
execute store result storage ram: i.i int 1 run scoreboard players get score.blue data
data modify storage sidebar.dah:data ui.lore[2].extra[0].text set string storage ram: i.i
execute store result storage ram: i.i int 1 run scoreboard players get score.yellow data
data modify storage sidebar.dah:data ui.lore[3].extra[0].text set string storage ram: i.i
execute store result storage ram: i.i int 1 run scoreboard players get score.green data
data modify storage sidebar.dah:data ui.lore[4].extra[0].text set string storage ram: i.i



function sidebar.dah:modify/generic
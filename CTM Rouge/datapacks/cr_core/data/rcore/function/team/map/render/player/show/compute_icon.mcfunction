data modify storage ram: text set value [{text:"",shadow_color:0},{text:"",font:"crouge:player/neg"},{text:"4-=",font:"crouge:player/0",color:"white",hover_event:{action:"show_text",value:{text:"",color:"white"}}},{text:"",font:"crouge:player/advance"}]
execute store result storage ram: i.i int 1 run scoreboard players get @s map_x
data modify storage ram: text[1].text set string storage ram: i.i

data modify storage ram: text[3].text set from storage ram: text[1].text

function rcore:team/map/render/player/show/get_font

function rcore:team/map/render/player/show/get_rotation

function rcore:uid/get
data modify storage ram: text[2].hover_event.value.text set from storage core:player data[0].Name
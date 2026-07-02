# Buttoms
    data modify storage ram: text set value ["}}",{text:"R",font:"crouge:map_button"},"{{{{"]
    execute unless score @s viewing_map matches 2.. run data modify storage ram: text set value ["}}",{text:"r",font:"crouge:map_button",hover_event:{action:"show_text",value:"查看下一层地图"},click_event:{action:"run_command",command:"/trigger dialog set 6"}},"{{{{"]
    data modify storage ram: dialog.dialog.body[0].contents[0] insert -2 from storage ram: text

    data modify storage ram: text set value ["{{{{",{text:"L",font:"crouge:map_button"},"}}"]
    execute if score @s viewing_map matches 1.. run data modify storage ram: text set value ["{{{{",{text:"l",font:"crouge:map_button",hover_event:{action:"show_text",value:"查看上一层地图"},click_event:{action:"run_command",command:"/trigger dialog set 5"}},"}}"]
    data modify storage ram: dialog.dialog.body[0].contents[0][0].extra append from storage ram: text
# Buttoms
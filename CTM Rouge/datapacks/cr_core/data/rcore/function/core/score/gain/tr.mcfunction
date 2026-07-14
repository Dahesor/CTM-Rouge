scoreboard players operation #score calculator.cr = #count calculator.cr
scoreboard players operation #score calculator.cr *= SCORE.TERRA_RESTORE options

tag @s add __this
scoreboard players operation $this team = @s team

## Broadcast
    data modify storage ram: broadcast set value {}
    data modify storage ram: broadcast.self set value [{text:"[✔] 您带回了",color:"green"},{score:{name:"#count",objective:"calculator.cr"},color:"yellow"},"个",{translate:"item.terra_restore"},"，队伍分增加",{score:{name:"#score",objective:"calculator.cr"},color:"yellow"}]

    data modify storage ram: broadcast.teammate set value [{text:"[✔] ",color:"green"},{selector:"@a[tag=__this]"},"带回了",{score:{name:"#count",objective:"calculator.cr"},color:"yellow"},"个",{translate:"item.terra_restore"},"，队伍分增加",{score:{name:"#score",objective:"calculator.cr"},color:"yellow"}]

    data modify storage ram: broadcast.spectator set value [{text:"[!] ",color:"white"},{selector:"@a[tag=__this]"},"带回了",{score:{name:"#count",objective:"calculator.cr"},color:"yellow"},"个",{translate:"item.terra_restore"},"，队伍分增加",{score:{name:"#score",objective:"calculator.cr"},color:"yellow"}]

    data modify storage ram: broadcast.enemy set value [{text:"[!] ",color:"red"},{selector:"@a[tag=__this]"},"带回了",{score:{name:"#count",objective:"calculator.cr"},color:"yellow"},"个",{translate:"item.terra_restore"},"，队伍分增加",{score:{name:"#score",objective:"calculator.cr"},color:"yellow"}]

    function rcore:core/tellraw/normal
## Broadcast

execute if score @s team matches 1 run scoreboard players operation score.red data += #score calculator.cr
execute if score @s team matches 2 run scoreboard players operation score.blue data += #score calculator.cr
execute if score @s team matches 3 run scoreboard players operation score.yellow data += #score calculator.cr
execute if score @s team matches 4 run scoreboard players operation score.green data += #score calculator.cr

execute as @a if score @s team = $this team at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute as @a unless score @s team = $this team at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.6 1
tag @s remove __this

scoreboard players operation #count calculator.cr *= EMERALD.TERRA_RESTORE options
loot give @s loot rcore:mech/drop_emerald
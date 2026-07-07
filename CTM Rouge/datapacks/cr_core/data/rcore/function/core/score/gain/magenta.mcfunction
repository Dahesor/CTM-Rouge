execute unless entity @s[tag=magenta.f1,tag=magenta.f2] run return run tellraw @s "§c[X] 兑换品红色羊毛【超越】前，必须带着它前往一次二层和三层"

tag @s add __this
scoreboard players operation $this team = @s team

## Broadcast
    data modify storage ram: broadcast set value {}
    data modify storage ram: broadcast.self set value [{text:"[✔] 您带回了",color:"green"},{translate:"item.magenta_wool"},"，队伍分增加",{score:{name:"wool.magenta.score",objective:"const"},color:"yellow"}]

    data modify storage ram: broadcast.teammate set value [{text:"[✔] ",color:"green"},{selector:"@a[tag=__this]"},"带回了",{translate:"item.magenta_wool"},"，队伍分增加",{score:{name:"wool.magenta.score",objective:"const"},color:"yellow"}]

    data modify storage ram: broadcast.spectator set value [{text:"[!] ",color:"green"},{selector:"@a[tag=__this]"},"带回了",{translate:"item.magenta_wool"},"，队伍分增加",{score:{name:"wool.magenta.score",objective:"const"},color:"yellow"}]

    data modify storage ram: broadcast.enemy set value [{text:"[!] ",color:"red"},{selector:"@a[tag=__this]"},"带回了",{translate:"item.magenta_wool"},"，队伍分增加",{score:{name:"wool.magenta.score",objective:"const"},color:"yellow"}]

    function rcore:core/tellraw/normal
## Broadcast

execute if score @s team matches 1 run scoreboard players operation score.red data += wool.magenta.score const
execute if score @s team matches 2 run scoreboard players operation score.blue data += wool.magenta.score const
execute if score @s team matches 3 run scoreboard players operation score.yellow data += wool.magenta.score const
execute if score @s team matches 4 run scoreboard players operation score.green data += wool.magenta.score const

execute as @a if score @s team = $this team at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5 1
execute as @a unless score @s team = $this team at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.6 1
tag @s remove __this

tag @s remove magenta.f2
tag @s remove magenta.f1
tag @s remove has_wool
function rcore:stream/start/gears/helmets
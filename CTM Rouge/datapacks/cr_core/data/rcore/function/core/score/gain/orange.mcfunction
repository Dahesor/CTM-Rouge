tag @s add __this
scoreboard players operation $this team = @s team

## Broadcast
    data modify storage ram: broadcast set value {}
    data modify storage ram: broadcast.self set value [{text:"[✔] 您带回了",color:"green"},{translate:"item.orange_wool"},"，队伍分增加",{score:{name:"wool.orange.score",objective:"data"},color:"yellow"}]

    data modify storage ram: broadcast.teammate set value [{text:"[✔] ",color:"green"},{selector:"@a[tag=__this]"},"带回了",{translate:"item.orange_wool"},"，队伍分增加",{score:{name:"wool.orange.score",objective:"data"},color:"yellow"}]

    data modify storage ram: broadcast.spectator set value [{text:"[!] ",color:"green"},{selector:"@a[tag=__this]"},"带回了",{translate:"item.orange_wool"},"，队伍分增加",{score:{name:"wool.orange.score",objective:"data"},color:"yellow"}]

    data modify storage ram: broadcast.enemy set value [{text:"[!] ",color:"red"},{selector:"@a[tag=__this]"},"带回了",{translate:"item.orange_wool"},"，队伍分增加",{score:{name:"wool.orange.score",objective:"data"},color:"yellow"}]

    function rcore:core/tellraw/normal
## Broadcast

execute if score @s team matches 1 run scoreboard players operation score.red data += wool.orange.score data
execute if score @s team matches 2 run scoreboard players operation score.blue data += wool.orange.score data
execute if score @s team matches 3 run scoreboard players operation score.yellow data += wool.orange.score data
execute if score @s team matches 4 run scoreboard players operation score.green data += wool.orange.score data

execute as @a if score @s team = $this team at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5 1
execute as @a unless score @s team = $this team at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.6 1
tag @s remove __this

tag @s remove has_wool
function rcore:stream/start/gears/helmets
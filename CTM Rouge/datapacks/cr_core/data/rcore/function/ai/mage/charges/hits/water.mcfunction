data modify storage run: i set value {dmg:"",amount:4}
data modify storage run: i.dmg set from entity @s data.Owner

execute as @a[scores={join_game=1..},gamemode=!spectator,dx=1.8,dy=1.8,dz=1.8] run function rcore:ai/mage/charges/hits/__dmg with storage run: i

playsound entity.player.splash master @a ~ ~ ~ 1 1.3
effect give @a[scores={join_game=1..},gamemode=!spectator,dx=1.8,dy=1.8,dz=1.8] weakness 10 0
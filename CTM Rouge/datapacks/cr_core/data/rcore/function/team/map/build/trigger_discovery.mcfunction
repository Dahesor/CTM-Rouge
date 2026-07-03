execute as @a[scores={join_game=1..}] if score @s room = $this room run tag @s add __this
execute as @a[limit=1,tag=__this,scores={team=1}] at @s run function rcore:player/utils/location/room_discovery
execute as @a[limit=1,tag=__this,scores={team=2}] at @s run function rcore:player/utils/location/room_discovery
execute as @a[limit=1,tag=__this,scores={team=3}] at @s run function rcore:player/utils/location/room_discovery
execute as @a[limit=1,tag=__this,scores={team=4}] at @s run function rcore:player/utils/location/room_discovery

tag @a remove __this
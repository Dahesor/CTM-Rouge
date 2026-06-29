data get storage ram: thisPlMap.compiled

execute as @a[tag=map.show,tag=!map.show_self] run function rcore:team/map/render/player/show/self_colored
execute as @a[tag=map.show_self] run function rcore:team/map/render/player/show/self


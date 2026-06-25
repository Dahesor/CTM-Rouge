scoreboard players set ROOM_SIZE options 32
scoreboard players set TUNNEL_SPACE options 10
scoreboard players set SPAWNER_INTEGRITY options 75
scoreboard players set SPAWNER_DIFF_VARIANCE options 50
scoreboard players set SPAWNER_COUNT_INC_THRESHOLD options 40

# ================= Structure Params ===============
scoreboard players set room.tp.margin options 1
scoreboard players set room.tp.spacing options 4
scoreboard players set room.shop.margin options 1
scoreboard players set room.shop.spacing options 4

# ================= Input Params =================
scoreboard players set cell.connectivity options 30
scoreboard players set floor.side_length options 8
scoreboard players set floor.base.x options 0
scoreboard players set floor.base.y options 20
scoreboard players set floor.base.z options 0
scoreboard players set $difficulty options 200
scoreboard players set mob.identity_min_time options 200
scoreboard players set mob.identity_max_time options 600
scoreboard players set mob.identity_spawn_count options 3

# ================= Derived Params =================
scoreboard players operation floor.room_count options = floor.side_length options
scoreboard players operation floor.room_count options *= floor.side_length options
scoreboard players operation SPAWNER_DIFF_AMPLITUDE options = SPAWNER_DIFF_VARIANCE options
scoreboard players operation SPAWNER_DIFF_AMPLITUDE options /= #2 calculator.cr
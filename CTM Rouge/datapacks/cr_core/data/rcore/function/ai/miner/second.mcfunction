execute unless function rcore:ai/miner/found_by_player run return fail

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function gen:place/room/post/wool/light_gray_spawn
kill
particle cloud ~ ~ ~ 0.1 0.2 0.1 0.2 30 force @a[distance=..10]
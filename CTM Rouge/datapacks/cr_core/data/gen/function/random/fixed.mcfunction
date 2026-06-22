data modify storage run: master set value {seed:0}
execute store result storage run: master.seed int 1 run scoreboard players get seed data
function gen:random/new_seqs with storage run: master
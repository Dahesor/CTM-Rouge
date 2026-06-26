data modify storage run: pos set from entity @s Pos
execute store result score $this pos_x run data get storage run: pos[0]
execute store result score $this pos_z run data get storage run: pos[2]
kill

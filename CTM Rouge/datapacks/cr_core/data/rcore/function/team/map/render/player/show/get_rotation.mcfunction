execute if score @s revive_cd matches 1.. run return run data modify storage ram: text[2].text set value "0-="
execute if score @s rot_xz matches -45..45 run return run data modify storage ram: text[2].text set value "3-="
execute if score @s rot_xz matches 45..135 run return run data modify storage ram: text[2].text set value "2-="
execute if score @s rot_xz matches -135..-45 run return run data modify storage ram: text[2].text set value "1-="
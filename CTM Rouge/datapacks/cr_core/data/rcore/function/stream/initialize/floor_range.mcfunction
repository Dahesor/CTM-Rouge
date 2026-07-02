scoreboard players operation #length calculator.cr = map_spacing options
scoreboard players operation #length calculator.cr *= floor.side_length options

scoreboard players operation floor_0.x.begin data = floor_0.x data
scoreboard players operation floor_0.z.begin data = floor_0.z data
scoreboard players operation floor_1.x.begin data = floor_1.x data
scoreboard players operation floor_1.z.begin data = floor_1.z data
scoreboard players operation floor_2.x.begin data = floor_2.x data
scoreboard players operation floor_2.z.begin data = floor_2.z data
scoreboard players remove floor_0.x.begin data 80
scoreboard players remove floor_0.z.begin data 80
scoreboard players remove floor_1.x.begin data 80
scoreboard players remove floor_1.z.begin data 80
scoreboard players remove floor_2.x.begin data 80
scoreboard players remove floor_2.z.begin data 80

scoreboard players operation floor_0.x.end data = floor_0.x data
scoreboard players operation floor_0.x.end data += #length calculator.cr
scoreboard players operation floor_0.z.end data = floor_0.z data
scoreboard players operation floor_0.z.end data += #length calculator.cr
scoreboard players operation floor_1.x.end data = floor_1.x data
scoreboard players operation floor_1.x.end data += #length calculator.cr
scoreboard players operation floor_1.z.end data = floor_1.z data
scoreboard players operation floor_1.z.end data += #length calculator.cr
scoreboard players operation floor_2.x.end data = floor_2.x data
scoreboard players operation floor_2.x.end data += #length calculator.cr
scoreboard players operation floor_2.z.end data = floor_2.z data
scoreboard players operation floor_2.z.end data += #length calculator.cr

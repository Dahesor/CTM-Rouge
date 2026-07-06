scoreboard players operation #math.private.a calculator.cr += #math.private.b calculator.cr
scoreboard players operation #math.private.a calculator.cr /= #2 calculator.cr
scoreboard players operation #math.private.b calculator.cr = #math.sqrt calculator.cr
scoreboard players operation #math.private.b calculator.cr /= #math.private.a calculator.cr
execute if score #math.private.a calculator.cr > #math.private.b calculator.cr run function rcore:math/sqrt/r
#define score_holder #math.sqrt @ calculator
#define function mech:core/math/sqrt Returns the square root of #math.sqrt @ calculator | Resualt will be /returned and stored in #math.sqrt @ calculator

#>
#@internal mech:math/
#define score_holder #math.private.

scoreboard players operation #math.private.a calculator.cr = #math.sqrt calculator.cr
scoreboard players set #math.private.b calculator.cr 1

execute if score #math.private.a calculator.cr matches 2.. run function rcore:math/sqrt/r

scoreboard players operation #math.sqrt calculator.cr = #math.private.a calculator.cr
return run scoreboard players get #math.sqrt calculator.cr
execute store result score #ori calculator.cr run random value 1..4 gen:fourway_orientation
execute if score #ori calculator.cr matches 2 run data modify storage ram: place.rotation set value "counterclockwise_90"
execute if score #ori calculator.cr matches 3 run data modify storage ram: place.rotation set value "180"
execute if score #ori calculator.cr matches 4 run data modify storage ram: place.rotation set value "clockwise_90"
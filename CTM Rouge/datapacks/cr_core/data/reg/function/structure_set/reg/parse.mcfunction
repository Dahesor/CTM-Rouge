data modify storage reg:structure_set reg[-1].templates set value {corner:[],deadend:[],four_way:[],three_way:[],straight:[]}

$data modify storage reg:structure_set reg[-1].templates.four_way append from storage reg:template reg[{type:"four_way",set:["$(id)"]}]
$data modify storage reg:structure_set reg[-1].templates.three_way append from storage reg:template reg[{type:"three_way",set:["$(id)"]}]
$data modify storage reg:structure_set reg[-1].templates.straight append from storage reg:template reg[{type:"straight",set:["$(id)"]}]
$data modify storage reg:structure_set reg[-1].templates.corner append from storage reg:template reg[{type:"corner",set:["$(id)"]}]
$data modify storage reg:structure_set reg[-1].templates.deadend append from storage reg:template reg[{type:"deadend",set:["$(id)"]}]
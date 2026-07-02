$data modify storage ram: tpPlMap.ground.compiled[-1][-1].extra[0] append value {text:"a",click_event:{action:"run_command",command:"/trigger input set $(f0)"}}
data modify storage ram: tpPlMap.ground.compiled[-1][-1].extra[0] append value "]"

$data modify storage ram: tpPlMap.upper.compiled[-1][-1].extra[0] append value {text:"a",click_event:{action:"run_command",command:"/trigger input set $(f1)"}}
data modify storage ram: tpPlMap.upper.compiled[-1][-1].extra[0] append value "]"

$data modify storage ram: tpPlMap.top.compiled[-1][-1].extra[0] append value {text:"a",click_event:{action:"run_command",command:"/trigger input set $(f2)"}}
data modify storage ram: tpPlMap.top.compiled[-1][-1].extra[0] append value "]"
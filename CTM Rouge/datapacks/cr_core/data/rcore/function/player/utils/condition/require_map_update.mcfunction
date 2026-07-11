execute if data storage team: cell{type:"void"} run return 1
execute if data storage team: cell{type:"room"} unless data storage team: cell.normal_room{is_finished:true} run return 1
execute if score secrect.f0.stof1 data matches 1 if data storage team: cell{type:"stairs"}.stair_room{to_floor:1,needs_key:true} run return 1

return fail
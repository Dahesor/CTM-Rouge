execute if score $this pos_x > floor_1.x.begin data if score $this pos_x < floor_1.x.end data if score $this pos_z > floor_1.z.begin data if score $this pos_z < floor_1.z.end data run return 1
execute if score $this pos_x > floor_2.x.begin data if score $this pos_x < floor_2.x.end data if score $this pos_z > floor_2.z.begin data if score $this pos_z < floor_2.z.end data run return 2

return 0
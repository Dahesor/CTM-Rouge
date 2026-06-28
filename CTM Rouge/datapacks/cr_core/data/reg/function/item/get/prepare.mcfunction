item replace entity 0-0-0-0-0 container.0 with air
data modify storage run: item set from storage reg:item this.stack
data modify storage run: item.Slot set value 0b
data modify entity 0-0-0-0-0 Items append from storage run: item
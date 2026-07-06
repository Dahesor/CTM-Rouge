data modify storage run: item set from storage reg:item this.stack
data modify storage run: item.Slot set value 0b
data modify entity 0-0-0-0-0 Items set value []
data modify entity 0-0-0-0-0 Items append from storage run: item
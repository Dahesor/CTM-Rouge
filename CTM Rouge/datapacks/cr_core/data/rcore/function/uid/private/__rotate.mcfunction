$data modify storage run: _UID_STORAGE set from storage core:player data[{UID:$(UID)}]
$data remove storage core:player data[{UID:$(UID)}]
data modify storage core:player data prepend from storage run: _UID_STORAGE
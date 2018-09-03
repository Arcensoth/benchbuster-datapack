# benchbuster:module/sync

function benchbuster:module/values

scoreboard players set $sync temp 0

execute if score $installed temp matches ..0 run scoreboard players set $sync temp 1

execute if score $installed temp matches 1.. if score $vmajor bbust.module = $vmajor temp if score $vminor bbust.module = $vminor temp if score $vpatch bbust.module = $vpatch temp if score $vdev bbust.module = $vdev temp run scoreboard players set $sync temp 1

execute if score $sync temp matches ..0 if score $vdev temp matches ..0 if score $vdev bbust.module matches ..0 run tellraw @s [{"text": "[Benchbuster]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "bbust.module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "bbust.module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "bbust.module"}}]}, {"text": " is installed!", "color": "red"}]
execute if score $sync temp matches ..0 if score $vdev temp matches ..0 if score $vdev bbust.module matches 1.. run tellraw @s [{"text": "[Benchbuster]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "bbust.module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "bbust.module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "bbust.module"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "bbust.module"}}]}, {"text": " is installed!", "color": "red"}]
execute if score $sync temp matches ..0 if score $vdev temp matches 1.. if score $vdev bbust.module matches ..0 run tellraw @s [{"text": "[Benchbuster]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "bbust.module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "bbust.module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "bbust.module"}}]}, {"text": " is installed!", "color": "red"}]
execute if score $sync temp matches ..0 if score $vdev temp matches 1.. if score $vdev bbust.module matches 1.. run tellraw @s [{"text": "[Benchbuster]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "bbust.module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "bbust.module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "bbust.module"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "bbust.module"}}]}, {"text": " is installed!", "color": "red"}]

execute if score $sync temp matches ..0 run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 2.0 2.0

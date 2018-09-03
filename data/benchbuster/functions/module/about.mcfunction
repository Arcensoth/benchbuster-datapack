# benchbuster:module/about

function benchbuster:module/values

tellraw @s [{"text":"[Benchbuster]", "color": "aqua"}, {"text": " #### Benchbuster ####", "color": "light_purple"}]

tellraw @s [{"text":"[Benchbuster]", "color": "aqua"}, {"text": " Brute-force benchmarking using sub-tick timing.", "color": "gray"}]

execute if score $vdev temp matches ..0 run tellraw @s [{"text":"[Benchbuster]", "color": "aqua"}, {"text": " v", "color": "dark_gray", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " for Minecraft 1.13", "color": "dark_gray"}]
execute if score $vdev temp matches 1.. run tellraw @s [{"text":"[Benchbuster]", "color": "aqua"}, {"text": " v", "color": "dark_gray", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "dark_gray", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " for Minecraft 1.13", "color": "dark_gray"}]

tellraw @s [{"text":"[Benchbuster]", "color": "aqua"}, {"text": " Authors:", "color": "gray"}]
function benchbuster:module/authors

function benchbuster:module/api/extras

playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 2.0 1.25

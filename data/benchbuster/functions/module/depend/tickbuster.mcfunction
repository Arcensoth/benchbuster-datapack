# mapmakers_toolbox:module/depend/tickbuster

execute store success score $active temp run function tickbuster:module/values

scoreboard players set $depend temp 0

execute if score $active temp matches 1.. if score $vmajor temp matches 0 if score $vminor temp matches 0 if score $vpatch temp matches 4.. run scoreboard players set $depend temp 1

execute if score $depend temp matches ..0 run tellraw @s [{"text":"[Mapmaker's Toolbox]", "color": "aqua"}, {"text": " Uh oh! Missing dependency ", "color": "red"}, {"text": "tickbuster", "color": "dark_red"}, {"text": " or the wrong version is active.", "color": "red"}]

execute if score $depend temp matches ..0 run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 2.0 2.0

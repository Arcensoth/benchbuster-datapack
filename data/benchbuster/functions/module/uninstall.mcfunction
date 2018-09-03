# benchbuster:module/uninstall

execute store success score $installed temp if score $installed bbust.module matches 1..
execute if score $installed temp matches 1.. run function benchbuster:module/forceuninstall
execute unless score $installed temp matches 1.. run tellraw @s [{"text":"[Benchbuster]", "color": "aqua"}, {"text": " Module not installed.", "color": "white"}]

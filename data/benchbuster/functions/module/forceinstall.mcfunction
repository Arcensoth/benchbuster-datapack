# benchbuster:module/forceinstall

function benchbuster:module/api/setup

scoreboard objectives add bbust.module dummy
scoreboard players set $installed bbust.module 1

function benchbuster:module/values

scoreboard players operation $vmajor bbust.module = $vmajor temp
scoreboard players operation $vminor bbust.module = $vminor temp
scoreboard players operation $vpatch bbust.module = $vpatch temp
scoreboard players operation $vdev bbust.module = $vdev temp

tellraw @s [{"text": "[Benchbuster]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "installed", "color": "green"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function benchbuster:module/scan

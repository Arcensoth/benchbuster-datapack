# benchbuster:module/api/setup

scoreboard objectives add bbust.config dummy
scoreboard objectives add bbust.math dummy

# defaults
scoreboard players set $benchtime bbust.config 1200

# bossbar for benchmark progress
bossbar add benchbuster:benchmark_progress {"text":"Benchmark Progress"}
bossbar set benchbuster:benchmark_progress color yellow

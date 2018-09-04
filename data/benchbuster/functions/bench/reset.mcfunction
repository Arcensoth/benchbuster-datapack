# benchbuster:bench/reset

# clear counters
scoreboard players set $baseline bbust.math 0
scoreboard players set $base_iters bbust.math 0
scoreboard players set $base_iters_per_tick bbust.math 0
scoreboard players set $hook_iters bbust.math 0
scoreboard players set $hook_iters_per_tick bbust.math 0
scoreboard players set $ticks bbust.math 0

# reset benchtime
scoreboard players operation $benchtime bbust.math = $benchtime bbust.config

# reset progress bar

# hide from everyone
bossbar set benchbuster:benchmark_progress players

# reset value
bossbar set benchbuster:benchmark_progress value 0

# reset max
# note that if automatic benchmarking is disabled this will fail and keep the previous max
# but we don't care because it's going to be hidden anyway
execute store result bossbar benchbuster:benchmark_progress max run scoreboard players get $benchtime bbust.math

# show again, but only if automatic benchmarking is enabled
execute if score $benchtime bbust.math matches 1.. run bossbar set benchbuster:benchmark_progress players @a[tag=benchbuster.bench]

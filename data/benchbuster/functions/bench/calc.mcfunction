# benchbuster:bench/calc

# calculate iterations per tick
scoreboard players operation $iters_per_tick bbust.math = $total_iters bbust.math
scoreboard players operation $iters_per_tick bbust.math /= $total_ticks bbust.math

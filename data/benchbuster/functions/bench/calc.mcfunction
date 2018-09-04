# benchbuster:bench/calc

# calculate baseline iterations per tick
scoreboard players operation $base_iters_per_tick bbust.math = $base_iters bbust.math
scoreboard players operation $base_iters_per_tick bbust.math /= $ticks bbust.math

# calculate hook iterations per tick
scoreboard players operation $hook_iters_per_tick bbust.math = $hook_iters bbust.math
scoreboard players operation $hook_iters_per_tick bbust.math /= $ticks bbust.math

# calculate performance index

# some constants
scoreboard players set $100 temp 100
scoreboard players set $10000 temp 10000

# start by copying the number of hook iterations
scoreboard players operation $perf_index_int bbust.math = $hook_iters_per_tick bbust.math

# multiply by 10000 so we can work with 4 decimal places
scoreboard players operation $perf_index_int bbust.math *= $10000 temp

# divide by the number of base iterations to get a ratio
scoreboard players operation $perf_index_int bbust.math /= $base_iters_per_tick bbust.math

# copy the result to the decimal portion of the performance index
scoreboard players operation $perf_index_dec bbust.math = $perf_index_int bbust.math

# mod the decimal portion by 100 so we're left with the 2 decimal places
scoreboard players operation $perf_index_dec bbust.math %= $100 temp

# finish by dividing the integer portion of the performance index by 100
scoreboard players operation $perf_index_int bbust.math /= $100 temp

# benchbuster:bench/handles/after_loop

# increment tick counter
scoreboard players add $ticks bbust.math 1

# accumulate total iterations for hooks vs baseline
execute if score $baseline bbust.math matches 0 run scoreboard players operation $hook_iters bbust.math += $current_iters bbust.math
execute unless score $baseline bbust.math matches 0 run scoreboard players operation $base_iters bbust.math += $current_iters bbust.math

# do stuff if automatic benchmarking is enabled
execute if score $benchtime bbust.math matches 1.. run function benchbuster:bench/auto

# let the before-tick loop know that we ran
scoreboard players set $sync bbust.math 1

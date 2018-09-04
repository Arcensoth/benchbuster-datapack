# benchbuster:bench/handles/after_loop

# increment tick counter
scoreboard players add $ticks bbust.math 1

# accumulate total iterations for hooks vs baseline
execute if score $baseline bbust.math matches 0 run scoreboard players operation $hook_iters bbust.math += $current_iters bbust.math
execute unless score $baseline bbust.math matches 0 run scoreboard players operation $base_iters bbust.math += $current_iters bbust.math

# check if automatic benchmark should go off
execute if score $benchtime bbust.config matches 1.. if score $ticks bbust.math >= $benchtime bbust.config run function benchbuster:bench/proc

# let the before-tick loop know that we ran
scoreboard players set $sync bbust.math 1

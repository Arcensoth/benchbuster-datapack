# benchbuster:bench/handles/after_loop

# increment tick counter
scoreboard players add $total_ticks bbust.math 1

# accumulate total iterations
scoreboard players operation $total_iters bbust.math += $current_iters bbust.math

# check if automatic benchmark should go off
execute if score $autobench bbust.config matches 1.. if score $total_ticks bbust.math >= $autobench bbust.config run function benchbuster:bench/proc

# let the before-tick loop know that we ran
scoreboard players set $sync bbust.math 1

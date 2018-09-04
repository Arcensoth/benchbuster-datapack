# benchbuster:bench/handles/loop

# increment iteration counter
scoreboard players add $current_iters bbust.math 1

# run hooks every-other tick
execute if score $baseline bbust.math matches 0 run function #benchbuster:hooks/bench

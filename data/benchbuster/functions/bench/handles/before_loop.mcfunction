# benchbuster:bench/handles/before_loop

# warn if the after-tick handle did not run
execute unless score $sync bbust.math matches 1 as @a[tag=benchbuster.bench] run function benchbuster:bench/print/warn

# reset the sync flag so the after-tick loop must reset it
scoreboard players set $sync bbust.math 0

# reset iteration counter for the current tick
scoreboard players set $current_iters bbust.math 0

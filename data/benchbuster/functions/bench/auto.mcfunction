# benchbuster:bench/auto

# update progress bar
execute store result bossbar benchbuster:benchmark_progress value run scoreboard players get $ticks bbust.math

# check if the benchmark is complete
execute if score $ticks bbust.math >= $benchtime bbust.math run function benchbuster:bench/proc

# benchbuster:bench/print/info

tellraw @s [{"text": "[Benchbuster]", "color": "aqua"}, {"text": " Averaged ", "color": "white"}, {"score": {"name": "$iters_per_tick", "objective": "bbust.math"}, "color": "light_purple"}, {"text": " iterations per tick over ", "color": "white"}, {"score": {"name": "$total_ticks", "objective": "bbust.math"}, "color": "yellow"}, {"text": " ticks at ", "color": "white"}, {"score": {"name": "$target", "objective": "tkb.config"}, "color": "aqua"}, {"text": " ms per tick.", "color": "white"}]

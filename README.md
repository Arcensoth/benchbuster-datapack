# Benchbuster
Brute-force benchmarking using sub-tick timing.

Field       | Value
----------- | -----
Category    | Utility
Namespace   | `benchbuster`
Scorespace  | `bbust`

- [Scoreboard](#scoreboard)
  - [`bbust.config` objective](#bbustconfig-objective)
  - [`bbust.math` objective](#bbustmath-objective)
- [Entity Tags](#entity-tags)
- [Event Hooks](#event-hooks)

## Scoreboard
Objective       | Criteria  | Usage     | Description
--------------- | --------- | --------- | -----------
`bbust.config`  | `dummy`   | Input     | Reserved for configuration options.
`bbust.math`    | `dummy`   | Read-only | Reserved for sensitive operations.
`bbust.module`  | `dummy`   | Read-only | Reserved for SMF.

### `bbust.config` objective
Fakeplayer    | Default | Description
------------- | ------- | -----------
`$benchtime`  | `1200`  | The number of ticks for which to run the benchmark.

### `bbust.math` objective
**These values are read-only and should not be altered.**

Fakeplayer              | Description
----------------------- | -----------
`$baseline              | Alternating flag determing whether hooks should be run.
`$base_iters`           | The total number of baseline iterations, over the course of the benchmark.
`$base_iters_per_tick`  | The average number of baseline iterations per tick, over the course of the benchmark.
`$current_iters`        | The number of iterations, over the course of the current tick.
`$hook_iters`           | The total number of hook iterations, over the course of the benchmark.
`$hook_iters_per_tick`  | The average number of hook iterations per tick, over the course of the benchmark.
`$perf_index_dec`       | The decimal portion of the performance index.
`$perf_index_int`       | The integer portion of the performance index.
`$sync`                 | Used to sync the before-tick and after-tick loops and ensure the latter is not cut off by `maxCommandChainLength`.
`$ticks`                | The total number of ticks, over the course of the benchmark.

## Entity Tags
Entity Tag          | Description
------------------- | -----------
`benchbuster.debug` | Present on players who are debugging the module.
`benchbuster.bench` | Present on players participating in benchmarks.

## Event Hooks
Function Tag                | Description
--------------------------- | -----------
`#benchbuster:hooks/bench`  | The function(s) to benchmark.

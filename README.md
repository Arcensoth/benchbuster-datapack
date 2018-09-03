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
Objective     | Criteria  | Usage     | Description
------------- | --------- | --------- | -----------
`bbust.config`  | `dummy`   | Input     | Reserved for configuration options.
`bbust.math`    | `dummy`   | Read-only | Reserved for sensitive operations.
`bbust.module`  | `dummy`   | Read-only | Reserved for SMF.

### `bbust.config` objective
Fakeplayer    | Default | Description
------------- | ------- | -----------
`$autobench`  | `0`     | The number of ticks to automatically benchmark at. Set to `0` to disable.

### `bbust.math` objective
**These values are read-only and should not be altered.**

Fakeplayer          | Description
------------------- | -----------
`$current_iters`    | The number of iterations, over the course of the current tick.
`$iters_per_tick`   | The average number of iterations per tick, over the course of the benchmark.
`$sync`             | Used to sync the before-tick and after-tick loops and ensure the latter is not cut off by `maxCommandChainLength`.
`$total_iters`      | The total number of iterations, over the course of the benchmark.
`$total_ticks`      | The totla number of ticks, over the course of the benchmark.

## Entity Tags
Entity Tag          | Description
------------------- | -----------
`benchbuster.debug` | Present on players who are debugging the module.
`benchbuster.bench` | Present on players who want to receive benchmarking messages.

## Event Hooks
Function Tag                | Description
--------------------------- | -----------
`#benchbuster:hooks/bench`  | The function(s) to benchmark.

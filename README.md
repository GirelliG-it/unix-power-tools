# unix-power-tools

Working through the classic Unix text-processing tools: `ed`, `sed`, `awk`, and `grep`.

## Approach

This repository tracks a deliberate, internalization-first study of Unix text processing.
The rules I set for myself:

- No copy-pasting solutions. Every command is written from scratch.
- Attempt first. Reference material is fine to consult along the way, but the goal is
  understanding *why* a command works, not just arriving at a working one.
- Expected output is hand-calculated before the program is run.
- One exercise at a time, committed individually.

The progression follows the chapter order of *Sed & Awk* rather than a pre-generated
curriculum. Concepts surface from practical problems; theory is consulted afterwards to
formalise what the exercise already demonstrated.

## References

| Source | Use |
|---|---|
| *Sed & Awk* — Dougherty & Robbins | Primary text; chapter order drives the progression |
| *Mastering Regular Expressions* — Friedl | Regex theory and engine behaviour |
| *Regular Expressions Cookbook* | Pattern reference |
| [ss64.com](https://ss64.com/) | Quick syntax lookup |
| [commandlinefu.com](https://www.commandlinefu.com/commands/browse) | Idiomatic one-liners in the wild |
| [Duke HTS2018 Unix shell materials](https://people.duke.edu/~ccc14/duke-hts-2018/index.html) | Supplementary applied practice using real bioinformatics data; Bash/GNU-oriented, so syntax and portability are verified separately |

## Progress

This table records exercises that have been refreshed, reconstructed, and committed
to this repository. Earlier practice exercises are added only after they have been
reviewed and rebuilt.

| # | Tool | Topic | Exercise | Status |
|---|---|---|---|---|
| 1 | `sed` | Substitution (`s///`) and external scripts (`-f`) | Expand state abbreviations using [`sed/expand-states.sed`](sed/expand-states.sed) and [`data/list`](data/list) | Reconstructed |

### Current position

- **Learning frontier:** `awk` associative arrays, accumulation, and `END`.
- **Repository reconstruction:** proceeding through selected earlier exercises one at a time.
- **Future topics:** added as the material dictates rather than listed provisionally.

## Structure

```
unix-power-tools/
├── sed/         # sed exercises
├── awk/         # awk exercises
├── combined/    # multi-tool pipelines
└── data/        # input fixtures, committed for reproducibility
```

Input files are kept small and version-controlled so any exercise can be re-run from a
clean clone.

## Conventions

Exercises are named by topic, not sequence number:

```
awk/associative_arrays.sh
sed/capture_groups.sh
```

Commits are one per completed exercise, prefixed by tool:

```
awk: associative arrays — sum population per district
sed: capture groups — extract endpoint paths from access log
```

This keeps `git log --oneline` scannable and supports `git log --grep='^awk:'`.

## Environment

CentOS Stream 10, zsh, GNU coreutils. Scripts assume GNU `sed` and `gawk`; where a
construct is a GNU extension rather than POSIX, this is noted in the script itself.

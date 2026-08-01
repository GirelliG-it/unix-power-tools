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

| # | Topic | Exercise | Status |
|---|---|---|---|
| 1 | `ed` — line addressing, basic editing | Interactive editing session | Done |
| 2 | `grep` — flags and pattern selection | Filtering log lines | Done |
| 3 | `sed` — substitution (`s///`) | Field replacement | Done |
| 4 | `sed` — address ranges and negation | Selective line editing | Done |
| 5 | `sed` — capture groups and backreferences | Extract endpoint paths from access log | Done |
| 6 | `sed` — case conversion (`\U`, `\L`) | Normalising text case | Done |
| 7 | `sed` — insert, append, change | Injecting header lines | Done |
| 8 | `awk` — fields, `NR`, `OFS` | Column selection and reformatting | Done |
| 9 | `awk` — arithmetic and compound conditions | Filtering on numeric criteria | Done |
| 10 | `awk` — associative arrays | Sum numeric field per key (`districts.txt`) | In progress |
| 11 | Shell expansion and quoting | Quoting pitfalls in inline `awk` programs | Planned |
| 12 | `awk` — loops and control flow | — | Planned |
| 13 | `awk` — user-defined functions | — | Planned |
| 14 | `sed` — hold space and multiline commands | — | Planned |
| 15 | `awk` — `getline`, `system`, command-line arguments | — | Planned |
| 16 | Capstone: structured extraction from OCR text | Separating inline numeric data from question markers | Planned |

Rows 12 onward are provisional and will be revised as the material dictates.

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

# Bash

## About
Small introductory Bash project based on the tasks in `Exercises.pdf`.
There are 6 scripts. Each script takes one argument: a path to a directory that is
the root of a subtree with text files.

## Repository contents
- `task1.sh` - lists all regular files in the subtree (prints file names only).
- `task2.sh` - word frequency across all files (count + word).
- `task3.sh` - for each word, counts how many files contain it.
- `task4.sh` - for each word, prints matching lines with line numbers and file names.
- `task5.sh` - replaces every `a` with `A` in every file (in-place via temp file).
- `task6.sh` - prints words that appear more than once in a single line, with lines
  and file names.
- `run_tests.sh` - runs tasks in the same order as the PDF example and then reverts
  changes made by `task5.sh`.
- `undo_task5.sh` - reverts `task5.sh` changes (`A` back to `a`).
- `print_files.sh` - prints the contents of all scripts.
- `a/` - sample test data (downloaded from the URL in the PDF).

## Usage
Make scripts executable:
```bash
chmod +x task*.sh run_tests.sh print_files.sh undo_task5.sh
```

Run a single task:
```bash
./task1.sh ./a
```

Run the full set:
```bash
./run_tests.sh
```

## Requirements
Scripts use standard shell tools: `bash`, `find`, `grep`, `sort`, `uniq`, `tr`, `wc`.
Optional: `tree` to show the structure of the test data.

## Notes
- `task5.sh` modifies files. Use it only on test data. To revert, run
  `./undo_task5.sh <path>`.

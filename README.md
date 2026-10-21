# Linux System Health Report

## Objective
Collect basic Linux system information for a simple health report.

## Information collected
- Number of available processing units
- Memory and swap usage
- Root filesystem disk usage

## Commands used
- `nproc`
- `free -h`
- `df -h /`
- `cat`
- `wc -l`

## Generate the report
Run these commands from the project directory:

```bash
nproc > health-report.txt
free -h >> health-report.txt
df -h / >> health-report.txt
```

## Project status
Beginner Linux and Git practice project.

# Day 6 - Jenkins Basics

## Objective

Learn Jenkins build parameters and environment variables by creating a reusable shell script that generates a build report.

## Environment

- **Operating System:** Ubuntu 24.04 running through WSL
- **CI Tool:** Jenkins LTS running in Docker
- **Scripting:** Bash
- **Version Control:** Git and GitHub

## Project Structure

```text
day06-jenkins-basics/
├── README.md
└── scripts/
    └── jenkins-info.sh
```

## Tasks Completed

### 1. Create a Build Report Script

Created `scripts/jenkins-info.sh` to display:

- Jenkins job name
- Build number
- Application name
- Current date and time
- Validation result

### 2. Use Environment Variables

The script uses the following environment variables:

| Variable | Purpose |
|---|---|
| `JOB_NAME` | Identifies the Jenkins job. |
| `BUILD_NUMBER` | Identifies the build execution number. |
| `APP_NAME` | Stores the application name supplied to the script. |

Fallback values are used when these variables are not provided.

### 3. Validate a Required Command

The script uses `command -v date` to check whether the `date` command is available. It returns a nonzero exit status if the check fails.

### 4. Test Locally

Tested the script using:

```bash
APP_NAME=nginx JOB_NAME=day06-jenkins-basics BUILD_NUMBER=1 ./jenkins-info.sh
```

The script displayed the supplied values and completed validation successfully.

## Key Concepts Learned

- Bash shell scripts
- Environment variables
- Default values in Bash parameter expansion
- Executable file permissions
- Command availability checks
- Exit statuses

## Outcome

Created and tested a reusable Jenkins build-report script. The next step is to configure Jenkins to execute this script and supply `APP_NAME` as a build parameter.

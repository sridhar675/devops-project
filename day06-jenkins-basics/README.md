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


## 5. Execute the Script in Jenkins

Created a Freestyle job named `day06-jenkins-basics` and configured it to retrieve the project from GitHub.

The job uses the `APP_NAME` string parameter to accept an application name when starting a build.

### Build Results

| Build | APP_NAME | Result |
|---|---|---|
| Build 1 | `nginx` | SUCCESS |
| Build 2 | `custom-app` | SUCCESS |

Both builds displayed the Jenkins job name, build number, application name, and build date. The script also verified that the `date` command was available.

### Key Concepts Learned

- Jenkins Freestyle jobs
- GitHub source code checkout
- Build parameters
- Jenkins environment variables
- Bash scripts executed by Jenkins
- Build results and console output

## Outcome

Successfully created and tested a reusable Jenkins job that executes a Bash script using a configurable application name. Both test builds completed successfully.

**Next step:** Practise the Jenkins and GitHub CI workflow, then learn Jenkins Pipeline using a `Jenkinsfile`.

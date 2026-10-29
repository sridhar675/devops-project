# Day 5 - Jenkins CI Fundamentals

## Objective

Install Jenkins using Docker, create a Freestyle job, integrate Jenkins with GitHub, and understand how Jenkins handles successful and failed builds.

## Environment

- **Operating System:** Ubuntu 24.04 running through WSL
- **Container Runtime:** Docker
- **CI Tool:** Jenkins LTS
- **Version Control:** Git and GitHub

## Tasks Completed

### 1. Run Jenkins in Docker

- Downloaded the Jenkins LTS Docker image.
- Created a Docker volume named `jenkins-data` to persist Jenkins data.
- Connected Jenkins to the `devops-lab` Docker network.
- Exposed the Jenkins web interface on port `8080`.

### 2. Create a Freestyle Job

Created a Jenkins job named `day05-first-jenkins-job`.

The job executed shell commands to display:

- Job name
- Build number
- Current date and time
- Build completion message

### 3. Integrate Jenkins with GitHub

Configured Jenkins to retrieve the `main` branch of the DevOps portfolio repository.

**Repository:** `https://github.com/sridhar675/devops-project`

Jenkins checked out the repository and listed the files in its workspace.

### 4. Test Build Results

- Ran the job successfully and confirmed `Finished: SUCCESS`.
- Used `exit 1` to simulate a failed build.
- Confirmed that Jenkins reported `Finished: FAILURE`.
- Removed the intentional failure command and restored a successful build.

## Key Concepts Learned

| Concept | Description |
|---|---|
| Jenkins Job | Defines the tasks Jenkins should execute. |
| Build | One execution of a Jenkins job. |
| Freestyle Project | A Jenkins job configured through the web interface. |
| Workspace | Directory where Jenkins checks out and works with project files. |
| GitHub Checkout | Retrieves source code from a Git repository. |
| Build Status | Indicates whether a build succeeded or failed. |
| Docker Volume | Persists Jenkins data beyond the lifecycle of its container. |

## CI Workflow

```text
GitHub Repository
        |
        v
Jenkins Checks Out Code
        |
        v
Executes Shell Commands
        |
        v
Reports Build Status
```

## Outcome

Successfully ran Jenkins in Docker, configured a Freestyle job, retrieved source code from GitHub, executed shell commands, and tested both successful and failed build outcomes.

## Next Steps

- Learn Jenkins build parameters and environment variables.
- Automate validation of repository files.
- Create a Jenkins Pipeline using a `Jenkinsfile`.

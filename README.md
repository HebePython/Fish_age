# Jenkins Pipeline Project

This project demonstrates the integration of Docker, Jenkins, and GitHub for continuous integration and deployment.

## Project Structure

```
jenkins-pipeline-project
├── Jenkinsfile          # Defines the Jenkins pipeline with build, test, and deploy stages
├── Dockerfile           # Contains instructions to build a Docker image for the application
├── src
│   └── app
│       └── main.py     # Main entry point of the application
├── .github
│   └── workflows
│       └── ci.yml      # GitHub Actions workflow for continuous integration
├── README.md           # Documentation for the project
└── .gitignore          # Specifies files and directories to be ignored by Git
```

## Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd jenkins-pipeline-project
   ```

2. **Build the Docker Image**
   ```bash
   docker build -t your-image-name .
   ```

3. **Run the Application**
   ```bash
   docker run -p 5000:5000 your-image-name
   ```

## Usage

- Access the application at `http://localhost:5000` after running the Docker container.
- Modify the `src/app/main.py` file to change the application logic.

## Jenkins Pipeline

- The `Jenkinsfile` defines the stages for building, testing, and deploying the application. Ensure Jenkins is set up to monitor this repository for changes.

## GitHub Actions

- The `.github/workflows/ci.yml` file automates the CI process. It runs tests and builds the application on every push to the repository.

## Contributing

Feel free to submit issues or pull requests for improvements or bug fixes.
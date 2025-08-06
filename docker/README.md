## Docker Environment for Reproducible Research

This directory contains the configuration files needed to create a fully reproducible R/RStudio/Quarto environment using Docker. This setup ensures that your research project runs in the same computational environment, regardless of the operating system (Windows, macOS, Linux) being used.

### What's Included

-   **`Dockerfile`**: Defines the custom Docker image, based on `rocker/verse:4.5.1`, pre-configured with necessary R packages (via `renv`) and LaTeX dependencies for Quarto.
-   **`docker-compose.yml`**: An orchestration file that simplifies running the Docker container. It handles port mapping, volume mounting for data persistence, and setting necessary environment variables.
-   **`start.bat` & `start.sh`**: Simple launcher scripts for Windows and Unix-like systems (macOS, Linux), respectively. These scripts automate finding an available IP, starting the environment, and opening RStudio in your browser.
-   **`stop.bat` & `stop.sh`**: Simple scripts to stop and clean up the running Docker container for Windows and Unix-like systems.

### Prerequisites

Before using this environment, ensure you have the following installed on your machine:

1.  **Docker**: Download and install Docker Desktop for your operating system from the official Docker website (<https://docs.docker.com/get-docker/>). Make sure it is running.

### Quick Start

1.  **Open a Terminal/Command Prompt:**
    -   **Windows:** Open Command Prompt (`cmd`) or PowerShell. Navigate (`cd`) to this `docker` directory (e.g., `C:\path\to\your\article-template\docker`).
    -   **macOS/Linux:** Open your terminal application. Navigate (`cd`) to this `docker` directory (e.g., `/path/to/your/article-template/docker`).
2.  **Launch the Environment:**
    -   **Windows:** Double-click the `start.bat` file, or run `start.bat` in the terminal.
    -   **macOS/Linux:** Run `./start.sh` in the terminal (you might need to make it executable first with `chmod +x start.sh`).
3.  **Access RStudio:**
    -   The script will automatically find an available IP (starting from 127.0.0.1), start the container, and open your default web browser to `http://127.0.0.1:8787`, for example.
    -   You should see the RStudio interface. **No login is required**; you are automatically logged in as the `rstudio` user.
    -   The files from your main project directory (`article-template`) will be available in the RStudio file pane under `/home/rstudio/project`.
4.  **Work on Your Project:**
    -   Open the `article-template.Rproj` file to activate the R project.
    -   Open and edit your Quarto files (`.qmd`).
    -   Run `quarto render` in the RStudio terminal to build your report.
5.  **Stop the Environment:**
    -   When you are finished working:
        -   **Windows:** Double-click the `stop.bat` file, or run `stop.bat` in the terminal.
        -   **macOS/Linux:** Run `./stop.sh` in the terminal.
    -   This stops the container and cleans up its resources. Your project files and installed packages are safely stored on your computer due to volume persistence.

### How It Works (Behind the Scenes)

-   **Image Building:** The first time you run `start.bat`/`start.sh`, Docker Compose reads the `Dockerfile` and builds a custom image. This involves downloading the base `rocker/verse` image, installing LaTeX packages, and restoring R packages listed in your project's `renv.lock` file. This process can take several minutes. Subsequent starts will be much faster.
-   **Container Runtime:** Docker Compose then starts a container based on this image.
-   **IP Mapping:** The script finds an available IP and maps it to port 8787 inside the container (where RStudio Server runs). This prevents conflicts if you run multiple projects.
-   **Volume Persistence:** Several directories are mounted as volumes:
    -   Your main project folder (`..`) is mounted to `/home/rstudio/project`, ensuring all your files are accessible and changes are saved directly to your computer.
    -   Special volumes are mounted for `renv`'s cache and library, storing downloaded and installed R packages. This means packages are installed only once and reused.
    -   Directories for RStudio's settings (`~/.config`, `~/.local`, `~/.rstudio`, `~/.R`) are mounted to local folders (`./cache/...`) to preserve your RStudio preferences and layout between sessions for this project.
-   **Environment:** Necessary environment variables like `DISABLE_AUTH=true` are set to simplify access.

This setup provides a robust, persistent, and easy-to-use environment tailored for reproducible research with Quarto and R.

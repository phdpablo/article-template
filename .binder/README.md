# Binder Configuration

This folder contains the configuration files needed to run ARTE on [MyBinder.org](https://mybinder.org/), a free cloud service that creates executable environments from GitHub repositories.

## Purpose

Unlike the `docker/` folder (designed for local development with persistent storage), the `.binder/` configuration creates an **ephemeral environment** for reproducibility verification. This allows anyone to:

- Verify that the ARTE environment is fully reproducible
- Explore the project structure and outputs without local setup
- Test the Quarto rendering process in a clean environment

> **Note:** MyBinder sessions are temporary (maximum ~12 hours) and non-persistent. Any changes made will be lost when the session ends.  This environment is intended for verification and exploration, not active development.

## Launching ARTE on MyBinder

Click the badge below to launch ARTE in your browser:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/phdpablo/article-template/main)

### Step-by-Step Instructions

#### 1. Wait for the Environment to Build

After clicking the badge, MyBinder will build the Docker image and start your session. **Please be patient** — the first build can take **10-15 minutes** as it needs to: 

- Download the base image
- Restore all R packages from `renv.lock`
- Install TinyTeX for PDF rendering

#### 2. Open RStudio from JupyterHub

Once the environment loads, you will see **JupyterHub** in your browser. To access RStudio: 

- Look for the **RStudio** button/icon in the JupyterHub launcher
- Click it to open RStudio in a **new browser tab**

#### 3. Open the Project in RStudio

When RStudio opens: 

- The ARTE project should already be loaded
- If not, go to `File > Open Project... ` and select the `.Rproj` file

#### 4. Render the Project with Quarto

Open the **Terminal** tab in RStudio (next to Console) and run:

```bash
quarto render
```

This will render all Quarto documents and generate the outputs in the `docs/` folder. The rendering process may take a few minutes.

#### 5. View the Rendered ARTE

After rendering completes: 

1. Navigate to the `docs/` folder in the RStudio Files pane
2. Click on `index.html`
3. Select **"View in Web Browser"** to open it in a new browser tab
4. Navigate through the ARTE to explore all sections and outputs

## Files in This Folder

| File | Description |
|------|-------------|
| `Dockerfile` | Defines the Docker image based on `rocker/binder:4.4.2` with renv packages and TinyTeX |

## Differences from docker/Dockerfile

| Aspect | docker/Dockerfile | .binder/Dockerfile |
|--------|-------------------|-------------------|
| **Base image** | `rocker/verse:4.5.1` | `rocker/binder:4.4.2` |
| **Purpose** | Local development | Reproducibility verification |
| **Persistence** | Volumes for data persistence | Ephemeral (no persistence) |
| **LaTeX** | TeX Live (pre-installed) | TinyTeX (via Quarto) |
| **Interface** | RStudio Server only | JupyterHub + RStudio |
| **Duration** | Unlimited | Max ~12 hours |

## Troubleshooting

### Build is taking too long

The build takes longer because MyBinder needs to create the image from scratch.

### Session timed out

MyBinder sessions expire after ~10-20 minutes of inactivity or ~12 hours maximum. Simply relaunch by clicking the badge again.

### PDF rendering fails

If `quarto render` fails for PDF output, try rendering only HTML:

```bash
quarto render --to html
```

## Learn More

- [MyBinder Documentation](https://mybinder.readthedocs.io/)
- [Rocker Binder Images](https://rocker-project.org/images/versioned/binder.html)
- [Quarto Documentation](https://quarto.org/)
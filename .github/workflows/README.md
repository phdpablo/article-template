## GitHub Actions Workflow for Website Deployment

This directory (`.github/workflows/`) contains automation scripts called **workflows** that integrate with **GitHub Actions**. Specifically, the `deploy.yml` workflow automates the process of building your Quarto project and publishing it as a website using **GitHub Pages**.

### What does this workflow do?

Whenever you push changes to the `main` branch of your repository (or trigger it manually), this workflow performs the following steps:

1.  **Prepares the Environment:** Sets up a fresh Ubuntu Linux environment on GitHub's servers.
2.  **Gets Your Code:** Downloads the latest version of your project files.
3.  **Installs Dependencies:**
    *   Installs **Pandoc** (needed by Quarto).
    *   Installs **TeXLive** (for PDF rendering, if needed).
    *   Sets up **Quarto** (version 1.6.42).
    *   Sets up **R** (version 4.5.1).
    *   Installs essential R packages: `knitr`, `rmarkdown`, `ggplot2`.
4.  **Builds the Website:** Runs the `quarto render` command to generate the HTML files for your website based on your `_quarto.yml` and `.qmd` files.
5.  **Deploys the Website:** Automatically pushes the generated website files to a special branch (`gh-pages`) in your repository. GitHub Pages is configured to serve the website from this branch.

### How to Enable This Workflow for Your Project

This workflow file (`deploy.yml`) is already included in the template. To make it active and deploy *your* version of the website, follow these steps:

1.  **Ensure the File is in the Correct Place:** Verify that this `deploy.yml` file is located in your project at `.github/workflows/deploy.yml`.
2.  **Configure GitHub Pages Source:**
    *   Go to your repository's page on GitHub (e.g., `https://github.com/your-username/your-repository-name`).
    *   Click on the **Settings** tab.
    *   In the left sidebar, scroll down and click on **Pages**.
    *   Under the **Build and deployment** section, find the **Source** setting.
    *   Change the source to **"Deploy from a branch"**.
    *   Select the branch **`gh-pages`** and the root directory `/ (root)`.
    *   Click **Save**.
3.  **Push Changes to `main`:** Make sure your project files (`.qmd`, `_quarto.yml`, etc.) are committed and pushed to the `main` branch of your GitHub repository.
4.  **Trigger the Workflow (if not automatic):**
    *   The workflow should automatically start when you push to `main`.
    *   If it doesn't start automatically, or you want to run it manually:
        *   Go to the **Actions** tab of your GitHub repository.
        *   Click on **Deploy Quarto Website** in the left sidebar list of workflows.
        *   Click the **Run workflow** button (usually a dropdown/dark blue button) and confirm.
5.  **View Your Website:** After the workflow runs successfully (you can see the status in the **Actions** tab), your website will be available at `https://your-username.github.io/your-repository-name/`. It might take a minute or two after the workflow completes for the site to update.

This automation ensures that your published website is always up-to-date with the latest version of your `main` branch.
# This file defines how to build a custom Docker image
# based on the rocker/verse image for the article template.

# --- Base Image ---
# Use the official rocker/verse version 4.5.1 as the starting point.
# This image includes R, RStudio Server, Quarto, Pandoc, and TinyTeX pre-installed.
FROM rocker/verse:4.5.1

# --- Image Metadata ---
# Add labels to the image for identification and documentation purposes.
# These are useful metadata but do not affect the container's functionality.
LABEL maintainer="Pablo Rogers <pablorogers@ufu.br>" \
      version="4.5.1" \
      description="RStudio/Quarto with TIER Protocol 4.0 environment for reproducible research projects."

# --- renv Configuration ---
# Set environment variables to configure where renv stores its cache
# and the installed package library.
# These paths are used later to create directories and mount volumes.
ENV RENV_PATHS_CACHE=/renv/cache
# Path for the global renv cache (stores .tar.gz of downloaded packages).
ENV RENV_PATHS_LIBRARY=/renv/library
# Path for the R package library installed by renv for this project.

# --- Create Directories and Set Permissions ---
# Create the necessary directories for the project and renv paths.
# Ensure the 'rstudio' user (default for rocker/verse) has read and write
# permissions on these directories.
# /project: Main working directory where the project will be mounted.
RUN mkdir -p /project ${RENV_PATHS_CACHE} ${RENV_PATHS_LIBRARY} && \
    chown -R rstudio:rstudio /project ${RENV_PATHS_CACHE} ${RENV_PATHS_LIBRARY}

# --- Set Working Directory ---
# Set the default working directory inside the container.
# All subsequent commands (COPY, RUN) will be executed here.
WORKDIR /project

# --- Copy renv Configuration Files ---
# Copy necessary renv files from the build context (your local system)
# to the working directory inside the container.
# These files are essential for renv to function correctly.
COPY ../renv.lock renv.lock
# The lock file defining the exact versions of R packages.
COPY ../.Rprofile .Rprofile
# The profile file that activates renv when R starts.
COPY ../renv/activate.R renv/activate.R
# The renv activation script.
COPY ../renv/settings.json renv/settings.json
# The renv settings for the project.

# --- Restore R Packages via renv ---
# Run the R command to restore R packages listed in renv.lock.
# This installs the packages at the versions specified into the directory
# defined by RENV_PATHS_LIBRARY.
# The -s flag makes the R execution quieter.
RUN R -s -e "renv::restore()"

# --- Install Additional LaTeX Packages ---
# Run an R command to install specific LaTeX packages using TinyTeX.
# These packages are often needed for rendering Quarto documents
# to PDF and might not be included in the default TinyTeX installation
# or are not managed directly by renv (which manages R packages).
# tinytex::tlmgr_install is the R function from the 'tinytex' package
# that calls the TeX Live manager (tlmgr) to install LaTeX packages.
RUN R -e "tinytex::tlmgr_install(c('amsfonts', 'unicode-math', 'booktabs', 'caption', 'float'))"

# Note: Port 8787 (default for RStudio Server) is automatically exposed by the base image.
# An explicit CMD is not needed as the base image already defines the command to start RStudio Server.
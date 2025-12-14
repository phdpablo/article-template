# This file defines how to build a custom Docker image
# based on the rocker/binder image for MyBinder.org compatibility. 
# Unlike the docker/Dockerfile (for local development with RStudio),
# this image is designed for ephemeral, read-only reproducibility checks.

# --- Base Image ---
# Use the official rocker/binder version 4.4.2 as the starting point. 
# This image includes R, RStudio Server, Quarto, Pandoc, and JupyterHub
# pre-installed, and is specifically designed for MyBinder.org. 
FROM rocker/binder:4.4.2

# --- Image Metadata ---
# Add labels to the image for identification and documentation purposes.
# These are useful metadata but do not affect the container's functionality. 
LABEL maintainer="Pablo Rogers <pablorogers@ufu.br>" \
      description="MyBinder environment for ARTE"

# --- renv Configuration ---
# Set environment variables to configure where renv stores its cache
# and the installed package library.
# These paths are used to ensure renv functions correctly inside the container.
ENV RENV_PATHS_CACHE=/home/rstudio/renv/cache
# Path for the global renv cache (stores . tar.gz of downloaded packages).
ENV RENV_PATHS_LIBRARY=/home/rstudio/renv/library
# Path for the R package library installed by renv for this project. 

# --- Copy renv Configuration Files ---
# Copy necessary renv files from the build context (your local system)
# to the home directory inside the container.
# These files are essential for renv to function correctly.
COPY --chown=rstudio renv.lock /home/rstudio/renv.lock
# The lock file defining the exact versions of R packages. 
COPY --chown=rstudio .Rprofile /home/rstudio/.Rprofile
# The profile file that activates renv when R starts.
COPY --chown=rstudio renv/activate.R /home/rstudio/renv/activate.R
# The renv activation script. 

# --- Copy Project Files ---
# Copy the entire project to the container's home directory. 
# This includes all source files, data, and documentation. 
COPY --chown=rstudio .  /home/rstudio

# --- Restore R Packages via renv ---
# Run the R command to restore R packages listed in renv.lock.
# This installs the packages at the versions specified into the directory
# defined by RENV_PATHS_LIBRARY. 
# The -s flag makes the R execution quieter. 
RUN R -s -e "renv::restore()"

# --- Install TinyTeX via Quarto ---
# Install TinyTeX using Quarto's built-in installer.
# This provides a lightweight LaTeX distribution (~150MB) that is
# compatible with current CTAN repositories and automatically installs
# missing LaTeX packages during PDF rendering.
# Note: rocker/binder comes with TeX Live, but it may have version
# incompatibilities with remote repositories.  TinyTeX from Quarto
# ensures a consistent and up-to-date LaTeX environment. 
RUN quarto install tinytex

# Note: Unlike docker/Dockerfile, this image does not require
# explicit port exposure or CMD instructions, as rocker/binder
# already configures JupyterHub and RStudio Server for MyBinder.org. 
# This environment is ephemeral (max ~12h) and non-persistent,
# intended only for reproducibility verification, not active development.
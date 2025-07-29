#
# Dockerfile for the article-template
#
# This file defines the steps to build a custom Docker image that contains
# a complete, pre-configured environment for this research project.
#

# 1. Start from a trusted, version-pinned base image.
# 'rocker/verse:4.4.1' provides a stable environment with R, RStudio,
# Quarto, and common data science tools already installed.
FROM rocker/verse:4.4.1

# 2. Copy the renv configuration files to a temporary location inside the image.
# This is necessary to pre-install the R packages defined in the lockfile.
WORKDIR /tmp
COPY ../renv.lock ./renv.lock
COPY ../.Rprofile ./.Rprofile
COPY ../renv/ ./renv/

# 3. Install all R packages from the renv.lock file.
# This command runs R from the terminal and executes renv::restore(),
# "baking" all required R packages directly into the image.
# This ensures the R environment is identical for every user and avoids
# the need for users to run renv::restore() themselves.
RUN R -e "install.packages('renv'); renv::restore(lockfile = 'renv.lock', clean = TRUE)"

# 4. Pre-install ONLY the necessary LaTeX packages (.sty files).
# This is much faster and creates a smaller image than 'scheme-full'.
# First, update the package manager itself, then install the specific packages.
RUN tlmgr update --self && \
    tlmgr install unicode-math booktabs caption float

# 5. Clean up temporary files.
# This removes the files we copied in step 2, helping to keep the
# final image size as small as possible.
RUN rm -rf /tmp/*

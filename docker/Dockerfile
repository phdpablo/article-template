FROM rocker/verse:4.5.1

LABEL maintainer="Pablo Rogers <pablorogers@ufu.br>" \
      version="4.5.1" \
      description="RStudio/Quarto with TIER Protocol 4.0 environment for reproducible research projects."

ENV RENV_PATHS_CACHE=/renv/cache
ENV RENV_PATHS_LIBRARY=/renv/library

RUN mkdir -p /project ${RENV_PATHS_CACHE} ${RENV_PATHS_LIBRARY} && \
    chown -R rstudio:rstudio /project ${RENV_PATHS_CACHE} ${RENV_PATHS_LIBRARY}

WORKDIR /project

COPY ../renv.lock renv.lock
COPY ../.Rprofile .Rprofile
COPY ../renv/activate.R renv/activate.R
COPY ../renv/settings.json renv/settings.json

RUN R -s -e "renv::restore()"

RUN R -e "tinytex::tlmgr_install(c('amsfonts', 'unicode-math', 'booktabs', 'caption', 'float'))"




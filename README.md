# (UNDER CONSTRUCTION) Quarto-TIER project for scientific article

[![](https://zenodo.org/badge/DOI/10.5281/zenodo.10443127.svg)](https://doi.org/10.5281/zenodo.10443127)

This repository is a template for you who want to develop an project article in [Quarto book](https://quarto.org/docs/books/) and [TIER protocol 4.0](https://www.projecttier.org/tier-protocol/protocol-4-0/) structure. The Quarto book is a tool for reproducible research and scientific writing. It is based on markdown and R language (Python, Julia and Observable), and integrated on RStudio. The TIER protocol 4.0 is a structure for organizing the project files and scripts.

## Why Quarto book project and not manuscript project?

There is a Quarto specific framework for dealing with scientific articles, [Quarto manuscript](https://quarto.org/docs/manuscripts/), and another for books, [Quarto book](https://quarto.org/docs/books/). Both share the same background, and they similar in many aspects, but the Quarto book project is more flexible, allows us to create a more complex structure, greater variability of layouts, and can be adapted to the TIER protocol structure. The Quarto manuscript is still recent and lacks some functionality to make it more interesting.

In addition to the structure, the big difference between the two is that with Quarto manuscript the scripts **are integrated** into the outputs, while in Quarto book **they can be integrated** into the outputs. This is a big difference because it allows us to have a more organized project, with a clear separation between the scripts and the outputs.

## How TIER protocol 4.0 can integrate with Quarto book?

The TIER is a general protocol, aimed at both qualitative and quantitative research, both for those who do not intend to work with documents and for those who wish to make their research as reproducible as possible, with dynamic documents, such as Quarto. This template will make life easier for anyone who has decided to use an organization of folders and files based on TIER Protocol 4.0 and wants to carry out their research through Quarto, via RStudio.

In this sense, the repository is already structured and adapted to handle the organization of TIER protocol 4.0 folders, and files necessary to insert the article narrative into Quarto documents. And not least, the repository is configured for you who will work with projects in RStudio with versioning (Git/GitHub), environment control (`renv`), and want to publish your article on GitHub Pages.

## What advantages does this template offer?

1.  **Organization**: The project is structured according to the TIER protocol 4.0, which facilitates the organization of the research.
2.  **Flexibility**: The Quarto book allows you to create a more complex structure, with greater variability of layouts.
3.  **Integration**: The Quarto book allows you to integrate the scripts into the outputs, but it is not mandatory.
4.  **Versioning**: The project is already configured for versioning with Git/GitHub.
5.  **Environment control**: The project is already configured with `renv` for environment control.
6.  **Publication**: The project is already configured for publication on GitHub Pages.
7.  **Documentation**: The project is already documented with a README file in all subfolders, reinforcing the TIER protocol 4.0 guidelines, and facilitating communication and understanding of the project. The TIER Protocol is highly structured and detailed, and intended to serve as a highly flexible framework that can be adapted to a wide variety of contexts. The high degree of detail serves a pedagogical purpose.

## How to use this template?

The structure of the folders and files is as follows:

-   **project/:** main folder of the project where the narrative, data, scripts and output of analysis files are located. See README inside subfolders.

-   **docs/**: folder for publishing an HTML website. The `docs` folder is commonly used to store the static files of a website, such as HTML, CSS, and JavaScript files. When you want to publish a website in GitHub Pages, you would place all your website’s files into this `docs` folder. It’s default directory that GitHub Pages uses to host websites from a repository, which will be updated when you render your document (Quarto book) in RStudio.

-   **renv/**: `renv` folder that the `renv` package in R creates when you enable environment control. When you initialize `renv` in your project, it creates a new `renv` folder. This folder is crucial for encapsulating the state of your project. By using the `renv` folder, you can ensure that your project is self-contained and reproducible. Anyone else who works on your project will be able to recreate the exact same R environment you used, simply by restoring the project using the `renv.lock` file.

- **adm/**: folder for administrative files, such contain sensitive and confidential data, temporary and work-related documents, backup repository for work in progress, administrative materials related to project management, etc. This folder is not versioned and is not published on GitHub Pages. There is an `.gitignore` file in the root of the project that prevents the `adm` folder from being versioned.

- **all others files**: are the configuration files for the project, from the `.gitignore`, `renv` to the `.Rprofile` file.

Clone this repository to your local PC and change the structure of the \_quarto.yml file as you wish. Maybe ligth and dark [themes](https://quarto.org/docs/output-formats/html-themes.html).

See the template deployment at: <https://phdpablo.github.io/article-template/>

The R environment is already configured by the [renv package](https://rstudio.github.io/renv/articles/renv.html). So, make sure you have renv installed and run renv::restore() to recover the versions used in this project.

Consider changing your article cover (img/cover.png).

Consider changing the [PDF format](https://quarto.org/docs/output-formats/pdf-basics.html) of your article.

How cite this template:

[![](https://zenodo.org/badge/DOI/10.5281/zenodo.10443127.svg)](https://doi.org/10.5281/zenodo.10443127)

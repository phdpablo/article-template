# (UNDER DEVELOPMENT) Quarto-TIER project for scientific article

[![](https://zenodo.org/badge/DOI/10.5281/zenodo.10443127.svg)](https://doi.org/10.5281/zenodo.10443127)

See the template deployment at: <https://phdpablo.github.io/article-template/>

This repository is a template for you who want to develop an project article in [Quarto book](https://quarto.org/docs/books/) and [TIER protocol 4.0](https://www.projecttier.org/tier-protocol/protocol-4-0/) structure. The Quarto book is a tool for reproducible research and scientific writing. It is based on markdown and R language (Python, Julia and Observable), and integrated on RStudio. The TIER protocol 4.0 is a structure for organizing the project files and scripts.

## What you need to know for using this template?

- If you've read this far, you most likely have some knowledge of RStudio and Git/GitHub (you should have installed it, created an account, and know how to clone repositories).
- Quarto is a relatively recent solution (2021) and you may not have some knowledge about it. If don't, you can check the [Quarto documentation](https://quarto.org/docs/). It is a tool that will possibly replace RMarkdown. If you are familiar with RMarkdown, you will have no problem with Quarto.
- Regardless of your field of study or scientific methodology, I strongly advise you to read [TIER Protocol 4.0 documentation](https://www.projecttier.org/tier-protocol/protocol-4-0/) if you haven't already. After all, everything you need to organize and document your folder and file structure is there. It's an effortless and intuitive read that will save you hours of thought.
- Docker???

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


Given that this template was created using Windows 11 Pro (23H2), R 4.4.0, RStudio 2024.04.2 (Build 764) and Quarto 1.5.45, the best way for replicate this repository locally, modify the narrative, and then publish the article as a dynamic document is:

1. **Use this template**:

-  Click on the green button `Use this template` at the right top of the repository and then `Create a new repository`. Name your repository. If you want to make it public you can publish your article while it is still in development. If private, use the repository for backup and commits and leave it public when publishing the research.

2. **Clone the repository to your local PC**:

- Get the repository URL by clicking on the green button `Code` and copy the URL. You can use the terminal to clone the repository. Open the terminal in the folder where you want to clone the repository and type `git clone URL`. Replace `URL` with the repository URL.

-  You can use the RStudio interface to clone the repository. Go to `File > New Project > Version Control > Git` and paste the repository URL.

3. **Restore the Enviroment Control**:

- The R environment is already configured by the [renv package](https://rstudio.github.io/renv/articles/renv.html). So, make sure you have `renv` installed and run `renv::restore()`to recover the versions used in this project.

4. **Edit READMEs**:

- Modify the READMEs files to correspond with the findings of your investigation. The description found in this repository's READMEs can serve as a guide, but you will undoubtedly need to modify it to fit the needs of your project, folder structure, files, etc. You might want to remove the README file from the `adm` folder. Just make sure to read everything first because you may find something useful for your situation. Of course you can do this during the research or at the end.

5. **Edit the Quarto configuration**:

- The Quarto configuration file is the `_quarto.yml` file. This file is located in the root of the `project` folder. You can change the structure of the `_quarto.yml`file with moderation. In this file there are some comments `(#)` that can guide you in the changes. For example, perhaps you want to change the [themes](https://quarto.org/docs/output-formats/html-themes.html) to one that is available.

- Naturally, you can keep an eye on these modifications as the study progresses and determine which configurations are most suitable for you or require. For example: consider changing your article cover (adm/cover.png) or Consider changing the [PDF format](https://quarto.org/docs/output-formats/pdf-basics.html).

6. **Edit the narrative**:

- The narrative is divided into `.qmd` files, each representing a section of the article's narrative in the `project` folder. Insert your narrative inside these files on RStudio/Quarto. Use your creativity to compile what you consider important in the main text of the article and leave intermediate analysis to other scripts. From an operational point of view, your best friend will be the [Quarto documentation](https://quarto.org/docs/guide/). Of course, assuming you know what you are doing in R for your statistical analyses.

- Commits are your friends. Use them to document the changes you make to the narrative. This will help you keep track of the changes you make and, if necessary, go back to a previous version. Don't forget to push and pull the changes to/from the remote repository.

7. **Publish the article**:

- When you are ready to publish the article, you can render the document in RStudio. The `docs` folder will be updated with the new version of the article. You can then push the changes to the remote repository and the article will be available on GitHub Pages. You can activate GitHub Pages in the repository settings, in the `Pages` tab, and select the `main` (or `master`) branch and the `docs` folder.

- This stage should, in my opinion, be carried out continuously throughout the project. From the outset, make the repository public. Then, when you commit and make changes, test to ensure that the renderings, or compilations, are proceeding as expected. This way, you will have a more reliable and less stressful publication process.

# IN CONSTRUCTION: Quarto article template for research project

OSF CITATION

See the template deployment at: <https://phdpablo.github.io/article-template/>; and get more information.

If you wish to create a project research using [Quarto book](https://quarto.org/docs/books/) with [RStudio](https://posit.co/), and [TIER protocol 4.0](https://www.projecttier.org/tier-protocol/protocol-4-0/) with [OSF](https://osf.io/) project management, this repository serves as a template. A useful resource for scientific writing and reproducible research is the Quarto book. It is integrated with RStudio, and uses markdown and R (Python, Julia and Observable) to build dynamic documents. The project files and scripts are arranged according to TIER protocol 4.0 and may be shared and/or posted on OSF. The project is already configured for versioning with [Git/GitHub](https://github.com/), environment control with [`renv`](https://rstudio.github.io/renv/articles/renv.html) and [Docker](https://www.docker.com/) and publication on [GitHub Pages](https://pages.github.com/).

## What you need to know for using this template?

- Almost nothing if you simply want to utilize the folder structure for TIER Protocol 4.0. Simply download the folder structure (.zip) and follow the instructions in the Readme.

- You might think about utilizing different programs, integrated development environments (IDEs), static documents (Word, Google Docs, PDFs, etc.), not versioning, and not control the environment. However, when the project is done, you might think about sharing and distributing your study on OSF in an orderly manner.

- I strongly recommend that you read the [TIER Protocol 4.0 documentation](https://www.projecttier.org/tier-protocol/protocol-4-0/) if you haven't already, regardless of your field of study or scientific technique. Ultimately, all the necessary components for arranging and recording your folder and file hierarchy are present. It's an effortless and intuitive read that will save you hours of thought.

- However, if you wish to utilize the template exactly as intended, you'll need to have a basic understanding of environment control (`renv` and/or Docker), some R IDE (I used RStudio), and Git/Github.

- Since Quarto was introduced in 2021, it's possible that you're not familiar with it. You can review the [Quarto documentation](https://quarto.org/docs/) if you don't. This tool has the potential to take the role of RMarkdown. You won't encounter any difficulties with Quarto if you are familiar with RMarkdown.

## Why Quarto book project and not manuscript project?

For handling scientific papers, there is a Quarto-specific framework called [Quarto manuscript](https://quarto.org/docs/manuscripts/), and for books, there is a Quarto book framework (https://quarto.org/docs/books/). Both have an analogous background and are comparable in many ways, but the Quarto book project is more adaptable, enables us to build a more sophisticated structure, has a wider range of layout options, and can be adapted to the TIER protocol framework. Since the Quarto manuscript is rather new, I don't think it's completely effective for our needs.

The primary distinction between the two, aside from their structure, is that the scripts in the Quarto manuscript **are integrated** into the outputs, whereas in the Quarto book **they can be integrated** into the outputs. This makes a significant impact since it enables us to build a project that is better organized and distinguishes clearly between the outputs and the scripts.

## How TIER protocol 4.0 can integrate with Quarto book?

The TIER is an all-purpose protocol designed for both open-source and proprietary software, catering to users who want to work with dynamic documents like Quarto as well as those who do want to work with a copy-and-paste workflow. Anyone who has chosen to adopt a TIER Protocol 4.0-based folder and file organization system and want to conduct research using Quarto via RStudio will find this template to be very helpful. Although you are free to use any IDE, this repository's configuration is "more" automatically done due to its integration with `renv`.

In this way, the repository is pre-configured and ready to manage the TIER protocol 4.0 folder organization and files required to include the article narrative into Quarto documents. Last but not least, the repository is set up for you if you wish to publish your article on GitHub Pages and work with projects in RStudio that use environment control (`renv`) and versioning (Git/GitHub). Since it was created using a standard Docker image (rocker/verse:4.4.1), setting it up to begin a project inside of a container is not too difficult.

## What advantages does this template offer?

1.  **Organization**: The TIER protocol 4.0 is used in the project's framework to help with research organization.
2.  **Flexibility**: You can design a complex structure with more layout options with the Quarto book.
3.  **Integration**: Although it is not required, you can integrate the scripts into the outputs using the Quarto book.
4.  **Versioning**: The project is set up with Git/GitHub versioning already.
5.  **Environment control**: The project is already configured with `renv` and Docker for environment control.
6.  **Publication**: The project has already been set up to be published on GitHub Pages.
7.  **Documentation**: With a README file in each subfolder, the project is already well-documented, supporting TIER protocol 4.0 criteria and promoting communication and comprehension of the work. 

The TIER Protocol is designed to serve as a highly adaptable framework that can be adapted to a wide range of situations. It is quite comprehensive and structured. The extensive level of detail has an educational purpose. Our contribution to the creation of the README was to use an AI to automatically synthesize the folder's structure and content in accordance with TIER Protocol 4.0.

We inserted the following prompt in ChatGPT4o (on 2024-07-16) to generate each of the README:

*I'm developing READMEs to place in the folders of a model research project. I am following the structure proposed by TIER Protocol 4.0, according to its official website: https://www.projecttier.org/tier-protocol/protocol-4-0/; and the attached figure in this chat. I would like your help in proposing these READMEs. Next, I will tell you the folder in which I want to create the README, one by one, and the link to the summary website proposed by TIER protocol 4.0 and I need you to explain what is in that folder.*

**The proponent of this template have, of course, carefully examined the AI outputs.**

## How to use this template?

The structure of the folders and files is as follows:

-   **project/:** The project's primary folder, which houses the article narrative, data, scripts, and analysis files' output. Look for README in the subfolders.

-   **docs/**: Folder used when releasing an HTML webpage. The static files of a website, like HTML, CSS, and JavaScript files, are often kept under the `docs` folder. All of your website's files go into this `docs` folder when you want to publish a website on GitHub Pages. When you render your document (Quarto book) in RStudio, the default directory used by GitHub Pages to host webpages from a repository is updated.

-   **renv/**: It is created when you enable environment control in R using the `renv` package. Upon initializing `renv` in your project, a new `renv` folder is generated. This folder is essential for summarizing your project's current state. You can make sure that your project is reproducible and self-contained by using the `renv` folder. By simply restoring the project using the `renv.lock` file and running the command `renv::restore()`, anyone working on your project will be able to replicate the exact same R environment that you used.

- **adm/**: folder for administrative files, including project management-related administrative materials, temporary and work-related papers, backup repositories for ongoing projects, and sensitive and confidential data. This folder is not published on GitHub Pages and is not versioned. The project root contains a `.gitignore` file that prevents versioning of the `adm` folder. In [OSF](https://osf.io/), for example, you could want to share the project folder in its entirety, thus this folder is indicated in the repository root instead of the project folder.

- **all others files**: are the configuration files for the project, from the `.gitignore`, `renv`, `Dockerfile`, to the `.Rprofile` file.

Since Ubuntu Jammy (22.04 LTS), R 4.4.1, RStudio 2024.04.2 (Build 764) and Quarto 1.4.555 were used to develop this template, the best method to duplicate this repository locally, edit the narrative, and then publish the article as a dynamic document is:

### For ***minimal*** reproducibility:

1. **Use this template**:

- Download the repository as a `.zip` file by clicking on the green button `Code` and then `Download ZIP`. Unzip the file and rename the folder to your project's name. Should you decide not to utilize RStudio, dynamic documents, version control, or the environment, think about just the `project` folder and maybe remove the others.

- If you decide to implement a paste-and-copy workflow, you should take into account the original TIER Protocol 4.0 proposal, as well as its [template](https://osf.io/4cxed/) and [example](https://osf.io/jpnm4/).

2. **Edit READMEs**:

- Adjust the README files to reflect the conclusions of your research. You can use the description in the READMEs of this repository as a reference, but you will definitely need to adapt it to your project's requirements, folder structure, files, etc. Of course, you can complete this at the conclusion or during the research.

3. **Share on OSF**:

- Think about posting your research project on OSF at the start, during, or end of your investigation. If, at the beginning or during your research, using a storage service (OneDrive, Google Drive, Dropbox, etc.) seems like the most save and practical option, then make a project on OSF and use a [Storage Add-on](https://help.osf.io/article/395-storage-add-ons) to link your machine folder to the OSF project. Just upload your `project` folder to the OSF project if you decide to share your work only after your research is complete.

### For ***proper*** reproducibility:

1. **Use this template**:

-  Click on the green button `Use this template` at the right top of this repository and then `Create a new repository`. Name your repository project. If you want to make it public you can publish your article while it is still in development. If private, use the repository for backup and commits and leave it public when publishing the research.

- In your GitHub account, get the repository URL by clicking on the green button `Code` and copy the URL. You can use the terminal to clone the repository: open the terminal in the folder where you want to clone the repository and type `git clone URL`, and replace `URL` with the repository URL. You can use the RStudio interface to clone the repository: go to `File > New Project > Version Control > Git` and paste the repository URL.

2. **Edit README**:

- The same as in step 2 above, but it could be a good idea to delete the `adm` folder's README file. Just make sure to read through everything first — you might find something that applies to your circumstance.

3. **Share on OSF**:

- The same as in step 3 above, except it is now working with all templates in the folder. Share just the `project` folder on OSF.

4. **Edit the Quarto configuration**:

- The `_quarto.yml` file is the Quarto configuration file. The `project` folder's root contains this file. With moderation, you can modify the `_quarto.yml` file's structure. There are some comments (`#`) in this file that will help you with the adjustments. For instance, you could like to switch to one of the available [themes](https://quarto.org/docs/output-formats/html-themes.html).

- Of course, as the research goes on, you could track these changes and decide which options work best for you or are necessary. For instance, think about altering the [PDF format](https://quarto.org/docs/output-formats/pdf-basics.html) or your article cover (adm/cover.png).

5. **Develop your narrative**:

- The narrative is divided into `.qmd` files, each representing a section of the article's narrative in the `project` folder. Insert your narrative inside these files on RStudio/Quarto. Use your creativity to compile what you consider important in the main text of the article and leave intermediate analysis to other scripts. From an operational point of view, your best friend will be the [Quarto documentation](https://quarto.org/docs/guide/). Of course, assuming you know what you are doing in R for your statistical analyses.

- Commits are your allies. Make use of them to record any modifications you make to the narrative. This will assist you in monitoring the modifications you make and restoring to an earlier version if needed. Pushing and pulling updates to and from the remote repository is important to remember.

6. **Environment Control**:

- The R environment is already configured by the [renv package](https://rstudio.github.io/renv/articles/renv.html). So, make sure you have `renv` installed and run `renv::restore()`to recover the versions used in this project. Remember to use `renv::snapshot()` to freeze the packages you used for your analyses at the end of your article.

7. **Publish the article**:

- You can render the dynamic document in RStudio when you're ready to publish the article. The modified version of the article will be placed in the `docs` folder. After that, you may push the modifications to the remote repository, and GitHub Pages will host the article. By selecting the `main` (or `master`) branch and the `docs` folder in the repository settings' `Pages` tab, you may activate GitHub Pages.

- If at all feasible, this phase ought to be completed continually during the project. Make the repository public right away. After making changes and committing them, test to make sure the renderings are happening as planned. In this manner, the dynamic document publication procedure will be less stressful.

### For ***full*** reproducibility:

- Please be aware that the reproducibility of this template is not always referred to when discussing our classification of minimal, proper, and full reproducibility. This is so that no R packages need to be installed, as it was created with native RStudio tools. Naturally, using a different IDE and utilizing subsequent versions of RStudio may result in incompatibilities, but the most crucial factor is the reproducibility of your research, thus package-level environment control is less fundamental than operating system-level environment control.

**1 to 7.** The same as in the proper reproducibility, but you should consider using Docker to control the environment plus `renv`.

8. **Use Docker**:

- The `Dockerfile` is in the root of the repository. Because I used the `rocker/verse:4.4.1` image as a base and didn't need to do any modifications, you'll see that the `Dockerfile` is really basic. This image contains the exact environment mentioned above and no packages are required for the template except the native RStudio ones.

- Thus, pull this image from [DockerHub](https://hub.docker.com/), copy the folder, or create a persistent volume from your repository, and build a production container. Using this container at the start of the research project allows you to use it during development, run the `renv::snapshot()` command at the end, and create an image to share the reproducible analysis of your work.
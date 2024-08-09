#----	Dockerfile	----#

# I will assume that your intention is to use this template and not to check its reproducibility.
# To audit your reproducibility see: https://phdpablo.github.io/article-template/.
# In this instance, I'll presume that you'll be working on your project inside 
# of a container and utilizing RStudio Server as your IDE. 
# In this manner, all the project files can be mounted using the same image 
# that I used to construct the template.
# I will also assume that each project will use a single container.

# 1. Install Docker following the instructions at https://docs.docker.com/get-docker/

# 2. Download or clone the repository at https://github.com/phdpablo/article-template
# 2.1. If Download ZIP file, extrated in your computer

# 3. Make sure you are in the project root folder
# 3.1. Open a terminal and navigate to the project folder
# 3.2. If you are using Windows, you can use the PowerShell or Git Bash
# 3.3. If you are using macOS or Linux, you can use the terminal
# 3.4. If you are using Docker Desktop, you can use the integrated terminal
# or you can use the Docker GUI

# 4. Create a container from the official rocker/verse:4.4.1 image
# 4.1. The image will be downloaded from DockerHub if it is not already on your computer
# 4.2. You are mapping your project folder into the container
# 4.3. You are disabling authentication to access RStudio Server
# 4.4. You are exposing the port 8787 to access RStudio Server
# 4.5. You are naming the container article-template

docker run --name article-template -p 8787:8787 -e DISABLE_AUTH=true \ 
    -v .:/home/rstudio/article-template rocker/verse:4.4.1

# 5. In your browser, go to http://localhost:8787 and start RStudio Server

# 6. Open the R project by double-clicking the article-template/article-template.Rproj file.

# 7. Run `renv::restore()` to install the project dependencies.
# 7.1. If your intention is to audit reproducibility, you can skip to the next step
# 7.2. Since I developed the template within this image, 
# the documents rendered without needing to install dependencies
# 7.3. However, it is always a good practice to start by restoring dependencies

# 8. Go to the terminal, enter in the project folder (`cd project`), 
# and use the `quarto render` command to generate all documents at once 
# in order to build the report and verify reproducible results.

# 9. Go to the `index.html` file in the `docs/` folder and view it in your Web Browser
# 9.1. Browse the dynamic document (html) and check the content
# 9.2. Delete the contents of the sections (`.qmd files`) and 
# edit the default fields in the _quarto.yml file
# 9.3. Edit the README's content

# Consider building a volume to persist the renv cache if you wish to increase 
# computational performance or use the container for other applications. 
# Visit https://rstudio.github.io/renv/articles/docker.html to learn how.

# Check out one method for setting up Git/GitHub inside the container 
# for version control and publishing in GitHub Pages afterwards:
# https://arca-dpss.github.io/manual-open-science/rocker-chapter.html
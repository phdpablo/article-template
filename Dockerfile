#----	Dockerfile	----#

# It is my assumption that you want to utilize the template in your research project 
# rather than verifying its reproducibility,
# as evidenced by the information found at https://phdpablo.github.io/article-template/.
# In this instance, I'll presume that you'll be working on your project inside 
# of a container and utilizing RStudio Server as your IDE. 
# In this manner, all the project files can be mounted using the same image 
# that I used to construct the template.
# I will also assume that each project will use a single container.

# 1. Install Docker following the instructions at https://docs.docker.com/get-docker/

# 2. Download or clone the repository at https://github.com/phdpablo/article-template

# 3. Make sure you are in the project root folder

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

# 7. Run renv::restore() to install the project’s dependencies.
# 7.1. This is only required since, in the Results section, 
# I used the ggplot2 and knitr packages as examples. 
# As this image served as the basis for creating the template, 
# it wouldn't require any dependencies to be installed.
# 7.2. In any case, you will need to initialize the environment control 
# (`renv::init()`) if you plan to work in this container using the template.

# 8. Go to the terminal, enter in the project folder (`cd project`), 
# and use the `quarto render` command to generate all documents at once 
# in order to build the report and verify reproducible results.

# Consider building a volume to persist the renv cache if you wish to increase 
# computational performance or use the container for other applications. 
# Visit https://rstudio.github.io/renv/articles/docker.html to learn how.

# Check out one method for setting up Git/GitHub inside the container 
# for version control and publishing in GitHub Pages afterwards:
# https://arca-dpss.github.io/manual-open-science/rocker-chapter.html
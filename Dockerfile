#----	Dockerfile	----#

# I will assume that your intention is to use this template in the container.
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
# 4.1. Execute the following command in the terminal
# 4.2. The image will be downloaded from DockerHub if it is not already on your computer
# 4.3. You are mapping your project folder into the container
# 4.4. You are disabling authentication to access RStudio Server
# 4.5. You are exposing the port 8787 to access RStudio Server
# 4.6. You are naming the container article-template (give the name you want)

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

# There are other ways to build this container or an image based on this template, 
# including in a more automatic way. For example, we could install the repository 
# directly from Github in the container and run 'renv' before starting the container. 
# However, we think this way is simpler and more flexible:

# 1. Customizable Environment: By manually setting up the Docker container using 
# the provided commands, users can easily adjust the configuration to fit their 
# specific project needs. For instance, they can change the R version by modifying 
# the `rocker/verse:4.4.1` image to another version, ensuring compatibility with 
# different dependencies or project requirements.

# 2. Incremental Development: This method allows users to incrementally build 
# their environment. They can start with a minimal setup and gradually add the 
# necessary tools and dependencies. This approach is particularly useful in 
# situations where the full scope of the project isn't known from the start, 
# allowing for a more agile development process.

# 3. Easy Reset and Reproduction: If the project becomes unstable due to package 
# conflicts or other issues, users can simply destroy the container and start 
# fresh with the same command. This ensures that the environment can always be 
# reset to a known, working state, which is harder to achieve with more automated 
# or complex Docker setups.

# 4. Selective Dependency Management: By deferring the execution of `renv::restore()`, 
# users have the option to skip unnecessary package installations if they don't need 
# them for their specific use case. This selective dependency management can save 
# time and resources, especially when working with large projects or limited 
# computational power.

# 5. Portability and Sharing: The setup instructions make it easy for others to 
# reproduce the exact environment on their own machines. This is crucial in 
# collaborative projects where team members may be working on different platforms. 
# The explicit and clear setup process ensures that everyone is on the same page, 
# reducing the risk of environment-related issues.

# 6. Modularity for Future Projects: The approach encourages modularity, allowing 
# users to create new project templates based on this initial setup. After making 
# adjustments to the container, such as installing additional packages or 
# configuring settings, users can export the folder and use it as a base for 
# future projects, streamlining the setup process for similar work.

# 7. Reduced Complexity for Beginners: For users who are new to Docker or R, 
# the step-by-step instructions provided in this Dockerfile are easier to follow 
# compared to more complex Docker configurations that require advanced knowledge. 
# This lowers the barrier to entry, enabling more people to utilize containerized 
# environments effectively.

# This approach is tailored to maximize flexibility while maintaining a balance 
# between simplicity and control over the development environment.
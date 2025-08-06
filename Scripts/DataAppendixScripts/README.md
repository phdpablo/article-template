# DataAppendixScripts Folder

## Overview

The `DataAppendixScripts` folder holds scripts used to generate the Data Appendix documentation for processed data files. These scripts automate documenting transformations and steps applied to raw data. This ensures the data appendix is comprehensive, accurate, and up-to-date. The scripts contain commands that generate the figures, tables, and descriptive statistics presented in the Data Appendix.

## Contents

-   **Data Appendix Scripts**: These scripts create detailed documentation of data processing. This includes descriptions of data files, transformation processes, figures, tables, descriptive statistics, and rationale for changes.

## Guidelines

-   **File Naming**: Use descriptive names for scripts. Names should indicate their specific roles in generating the Data Appendix.
-   **Documentation**: Document each script thoroughly with comments. Explain its purpose, inputs, outputs, and key steps. Note any assumptions or important considerations.
    -   **Header Comments**: Start each script with a header. Include the script name, author, date, and a brief function description.
    -   **Inline Comments**: Use inline comments to explain specific lines or sections. This is important for complex tasks.
-   **Automation**: Design scripts to automate documentation as much as possible. This can include extracting metadata, summarizing steps, and formatting output.
-   **Modularity**: Write scripts in a modular way. This allows easy updates and code reuse. Separate different documentation tasks into distinct scripts.
-   **Version Control**: Use version control to track script changes. Record major changes and maintain a version history.

## Additional Resources

We recommend the [Tidyverse Style Guide](https://style.tidyverse.org/) for standardization. For more detailed instructions, see the [TIER Protocol 4.0 DataAppendixScripts Guidelines](https://www.projecttier.org/tier-protocol/protocol-4-0/root/scripts/dataappendixscripts/).

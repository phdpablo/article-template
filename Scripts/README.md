# Scripts Folder

## Overview

The `Scripts` folder holds all scripts for data processing, analysis, and result generation. Scripts are organized into subfolders by function and workflow stage. Good organization and documentation here are key for research reproducibility and transparency.

## Contents

### Subfolders

1.  **ProcessingScripts**
    -   **Purpose**: Scripts for initial processing and cleaning of raw data.
    -   **Description**: These transform raw data from the `InputData` folder into intermediate forms in the `IntermediateData` folder.
2.  **DataAppendixScripts**
    -   **Purpose**: Scripts to generate Data Appendix documentation for processed data.
    -   **Description**: These automate documentation, accurately recording all transformations and steps.
3.  **AnalysisScripts**
    -   **Purpose**: Scripts for actual data analysis.
    -   **Description**: These take intermediate data and apply statistical or analytical methods. They produce final outputs stored in the `Output` folder.

### Master Script

-   **Purpose**: The main script that orchestrates execution of all other scripts.
-   **Description**: This script typically runs all processing, analysis, and documentation scripts in order. It reproduces the entire workflow from raw data to final results.

## Guidelines

-   **Organization**: Keep scripts organized in their subfolders by function. Use clear, descriptive names that reflect purpose.
-   **Documentation**: Document each script thoroughly with comments. Explain the purpose, inputs, outputs, and key steps. Include usage instructions if needed.
-   **Modularity**: Write scripts in a modular way. This allows easy updates and code reuse. Separate different processing and analysis stages into distinct scripts.
-   **Version Control**: Use version control to track script changes. Record major changes and maintain a version history.

## Additional Resources

We recommend the [Tidyverse Style Guide](https://style.tidyverse.org/) for standardization. For more detailed instructions, see the [TIER Protocol 4.0 Scripts Guidelines](https://www.projecttier.org/tier-protocol/protocol-4-0/root/scripts/).

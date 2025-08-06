# Data Folder

## Overview

This folder holds all data files for the project. Its structure supports clear documentation and reproducibility by separating data based on its role in the analysis workflow. It contains three subfolders: `InputData`, `AnalysisData`, and `IntermediateData`.

## Contents

### 1. InputData

-   **Purpose**: Stores raw data files used as input for the analysis.
-   **Contents**:
    -   `Input Data Files`: Raw data files in their original format.
    -   `Metadata`: Documentation about the data sources, including a `Data Sources Guide` and `Codebooks`.

### 2. AnalysisData

-   **Purpose**: Stores processed data files ready for analysis after cleaning and transformation.
-   **Contents**:
    -   `Analysis Data Files`: Data files prepared for analysis.
    -   `The Data Appendix`: Detailed descriptions of the data files, including modifications made from the raw data.

### 3. IntermediateData

-   **Purpose**: Stores data files created during processing steps. These are neither raw nor final data, but intermediary products of data transformation processes.

## Guidelines

-   **File Naming**: Use descriptive names to easily identify file contents and processing stages. We use PascalCase for subfolder names. For your files, syntax, and functions, we recommend following the standardization proposed by the Tidyverse Style Guide.
-   **Documentation**: Include documentation for each data file. Note its source, transformations applied, and relevance to the analysis.
-   **Version Control**: Use version control to track changes, especially for intermediate and analysis data.

## Additional Resources

Refer to the [TIER Protocol 4.0 Data Directory Guidelines](https://www.projecttier.org/tier-protocol/protocol-4.0/root/data/) for detailed instructions and best practices.

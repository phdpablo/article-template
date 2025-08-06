# InputData Folder

## Overview

The `InputData` folder stores the original, raw data files used as inputs for the analysis. This folder is key for transparency and reproducibility. It holds the data files themselves and metadata that describes the data sources in detail.

## Contents

### 1. Input Data Files

-   **Purpose**: Store raw data files in their original format as received or downloaded.
-   **Description**: These files should remain untouched and unaltered from their original state. They provide a clear starting point for any data processing or analysis.

### 2. Metadata

-   **Purpose**: Provide comprehensive documentation about the data sources and the data itself.
-   **Contents**:
    -   **Data Sources Guide**: Information about where the data came from. Include URLs, descriptions of how it was collected, and associated methodologies.
    -   **Codebooks**: Explain the variables within the data files. Include definitions, coding schemes, and other information needed to understand the data.

## Guidelines

-   **File Organization**: Keep original data files and metadata well-organized and clearly named. This makes identification and access easier.
-   **Documentation**: Document each data file thoroughly. Note its source, date of acquisition, and context needed to understand its content.
-   **Data Integrity**: Do not modify raw data files in this folder. Clean or transform data in subsequent steps. Store those results in different folders (e.g., `IntermediateData` or `AnalysisData`).

## Additional Resources

For more detailed instructions and best practices, refer to the [TIER Protocol 4.0 InputData Guidelines](https://www.projecttier.org/tier-protocol/protocol-4-0/root/data/originaldata/).

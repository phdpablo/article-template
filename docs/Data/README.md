# Data Folder

## Overview

This folder contains all data files related to the project, organized to ensure clear documentation and reproducibility. The data is divided into three main subfolders: `InputData`, `AnalysisData`, and `IntermediateData`.

## Subfolders

### 1. InputData
- **Purpose**: Contains the raw data files used as input for the analysis.
- **Contents**:
  - `Input Data Files`: Raw data files in their original format.
  - `Metadata`: Documentation about the data sources, including a `Data Sources Guide` and `Codebooks`.

### 2. AnalysisData
- **Purpose**: Contains the processed data files that are used in the analysis after cleaning and transformation.
- **Contents**:
  - `Analysis Data Files`: Data files prepared and ready for analysis.
  - `The Data Appendix`: Detailed descriptions of the data files, including any modifications made from the raw data.

### 3. IntermediateData
- **Purpose**: Contains data files that are created during the processing steps but are not final or raw data. These files are intermediary products of data transformation processes.

## Guidelines

- **File Naming**: Use descriptive names for files to easily identify their contents and stages of processing. We following [PascalCase](https://en.wikipedia.org/wiki/Camel_case) convention to encode a name for the project subfolders, but but we recommend using the standardization proposed by the [Tidyverse Style Guide](https://style.tidyverse.org/) for your files, syntax and functions.
- **Documentation**: Ensure that each data file is accompanied by adequate documentation, including its source, any transformations applied, and its relevance to the analysis.
- **Version Control**: Use version control practices to track changes in data files, especially for intermediate and analysis data.

## Additional Resources

Refer to the [TIER Protocol 4.0 Data Directory Guidelines](https://www.projecttier.org/tier-protocol/protocol-4-0/root/data/) for detailed instructions and best practices.
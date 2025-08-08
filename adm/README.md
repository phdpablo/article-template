# Adm Folder

## Overview

The `Adm` (Administration) folder serves as a secure and organized space for project-related materials that should not be included in version control or public sharing. This folder is specifically excluded from Git tracking (via `.gitignore`) and is not published to platforms like GitHub Pages. It centralizes sensitive, temporary, local, and administrative files, keeping the main project repository clean and focused on the core, reproducible components.

## Contents

-   **Sensitive and Confidential Data**: Personal information of participants, financial records, contracts, non-disclosure agreements (NDAs), and other private documents.
-   **Temporary and Work-in-Progress Files**: Drafts, notes, "to-do" lists, meeting minutes, and intermediary files (e.g., source files for external illustrations).
-   **Local Environment Files**: Machine-specific configurations, credentials, API keys, or local database connection strings.
-   **Project Management Documents**: Budgets, timelines, resource allocation plans, and internal administrative records.
-   **Non-Essential Project Files**: Files related to the project but not required for its technical execution or reproduction, such as articles written in a native language or personal organizational tools.

## Guidelines

-   **Exclusion from Version Control**: The `Adm` folder is intentionally ignored by Git. Do not place files here that are necessary for the reproducibility of your research project's core analysis.
-   **Security for Sensitive Data**: Store all sensitive and confidential information within this folder to prevent accidental public exposure.
-   **Organization of Temporary Files**: Use this folder for any documents or files that are frequently updated, temporary in nature, or not suitable for the main project history.
-   **Local Configuration Storage**: Keep any local environment setup files or secrets in this folder to avoid committing them to the shared repository.
-   **Project Administration**: Centralize internal project management documents here to separate them from the technical project files.

## Additional Resources

While the `Adm` folder is excluded from the TIER Protocol's core reproducibility structure, its use supports good project hygiene. For general project organization principles, refer to the [TIER Protocol 4.0](https://www.projecttier.org/tier-protocol/protocol-4-0/).

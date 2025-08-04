# render_cleanup.R
# Script to run after Quarto rendering
# Removes any folder ending with '_files' and specific folders like 'site_libs' from the project root.
# Also removes HTML files and '_files' folders from specified resource directories (Data, Output, Scripts).

# 1. Clean up specific and pattern-based folders from the project root
# Define specific folders in the root that should always be removed
specific_root_folders <- c("site_libs")

# Find all directories in the project root that match the '_files' pattern
all_root_items <- list.files(path = ".", full.names = FALSE, recursive = FALSE)
root_files_folders <- all_root_items[dir.exists(all_root_items)] # Filter only directories

# Identify folders ending with '_files'
pattern_files_folders <- root_files_folders[grepl("_files$", root_files_folders)]

# Combine specific folders and pattern-matched folders
root_folders_to_remove <- unique(c(specific_root_folders, pattern_files_folders))

message("Cleaning up folders from the project root...")
for (folder in root_folders_to_remove) {
  folder_path <- folder # Paths are relative to the current directory
  if (dir.exists(folder_path)) {
    unlink(folder_path, recursive = TRUE)
    message("  Folder removed from root: ", folder_path)
  } else {
    # This case handles folders that were identified but disappeared before removal
    message("  Folder not found (skipped): ", folder_path)
  }
}

# 2. Clean HTML files and '_files' folders within specified resource directories
# Define the directories where cleanup should occur
target_directories <- c("Data", "Output", "Scripts")

# Define patterns for items to remove
patterns_to_remove <- c("\\.html$", "_files$") # HTML files and folders ending in _files

message("Cleaning up HTML files and '*_files' folders in resource directories (Data, Output, Scripts)...")
for (dir_path in target_directories) {
  if (dir.exists(dir_path)) {
    # List all items (files and folders) directly inside the directory
    items <- list.files(path = dir_path, full.names = TRUE, recursive = FALSE)
    
    # Filter items that match the patterns
    items_to_remove <- items[
      grepl(patterns_to_remove[1], basename(items)) | # Matches .html files
        grepl(patterns_to_remove[2], basename(items))   # Matches _files folders
    ]
    
    # Remove the filtered items
    if (length(items_to_remove) > 0) {
      sapply(items_to_remove, function(item) {
        # Extra safety check before removal
        if (file.exists(item) || dir.exists(item)) {
          unlink(item, recursive = TRUE)
          message("  Item removed: ", item)
        } else {
          message("  Item disappeared before removal: ", item)
        }
      })
    } else {
      message("  No matching items found to remove in ", dir_path)
    }
  } else {
    message("  Target directory not found: ", dir_path)
  }
}

message("Post-render cleanup completed: Unwanted temporary folders and files removed.")

# 3. Clean up specific leftover files from the project root
# Define patterns for specific file types in the root that should always be removed after render
patterns_root_files_to_remove <- c(
  "\\.tex$" # Pattern to match any .tex file
  # You can add other file patterns if needed, e.g., "\\.aux$", "\\.log$"
)

message("Cleaning up specific file types from the project root...")
for (pattern in patterns_root_files_to_remove) {
  # List all files in the root directory that match the current pattern
  matching_files <- list.files(path = ".", pattern = pattern, full.names = FALSE)
  
  # Remove each matching file
  if (length(matching_files) > 0) {
    sapply(matching_files, function(file_name) {
      file_path <- file_name
      if (file.exists(file_path)) {
        file.remove(file_path) # Use file.remove for files
        message("  File removed from root: ", file_path)
      } else {
        # Handle case where file disappears between listing and removal (unlikely but safe)
        message("  File not found (skipped): ", file_path)
      }
    })
  } else {
    message("  No files matching pattern '", pattern, "' found in root to remove.")
  }
}

message("Post-render cleanup completed: Unwanted temporary folders and files removed.")
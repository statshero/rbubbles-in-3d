## SETUP AND FUNCTIONS -------------------------------------------------

# List of packages for session
packages <- c( "dplyr", "ggplot2", "readr")

# Install CRAN packages (if not already installed)
.inst <- packages %in% installed.packages()
if(length(packages[!.inst]) > 0) install.packages(packages[!.inst])

# Load packages into session 
sapply(packages, require, character.only = TRUE)

# ggplot2 options
theme_set(theme_minimal(base_family = "Helvetica Neue", base_size = 14))

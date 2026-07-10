# Setup script: install required R packages for AS91946 textbook
# Run this script once before rendering the Quarto book:
#   source("setup.R")

required_packages <- c(
  "knitr",      # Table formatting
  "rmarkdown",  # R Markdown / Quarto rendering
  "ggplot2",    # Advanced data visualisation (optional extension)
  "dplyr",      # Data manipulation
  "tidyr"       # Data tidying
)

install_if_missing <- function(pkg) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg, repos = "https://cloud.r-project.org")
  }
}

invisible(lapply(required_packages, install_if_missing))

cat("All required packages are installed.\n")
cat("You can now render the book with:\n")
cat("  quarto render\n")

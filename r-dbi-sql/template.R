# Load packages -----------------------------------------------------------

# Load libraries
library(DBI)
library(RSQLite)

# Utilities
library(dplyr)
library(dbplyr)
library(magrittr)

# Plotting
library(ggplot2)
library(ggbeeswarm)

# Modeling
library(tidymodels)


# Setup -------------------------------------------------------------------

# Connect to database
sqlite <- dbDriver("SQLite")
con <- dbConnect(sqlite, "path/to/database.db")


# Get databases to quickly see
table_name <- tbl(con, "table_name")


# Quickly get results
#' @param q string of SQL query
#' @example
#' con %>% query("select * from table_name")
query <- function(con, q) {
  dbFetch(dbSendQuery(con, q))
}

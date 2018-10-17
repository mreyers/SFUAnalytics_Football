# SFU Sports Analytics Club
# Matthew Reyers, James Thomson, Nolan __, James __
# October 16, 2018

# Project: Football Play by Play analytics
# Process detailed below

################################## Libraries ###############################
require(tidyverse) # For efficient data management and readable code
require(dplyr)
require(devtools)
devtools::install_github(repo = "maksimhorowitz/nflscrapR")
require(nflscrapR)

################################### Main ################################
# SFU Sports Analytics Club
# Matthew Reyers, James Thomson, Nolan OReilly, James __
# October 16, 2018

# Project: Football Play by Play analytics
# Process detailed below

################################## Libraries ###############################
require(tidyverse) # For efficient data management and readable code
require(dplyr)
require(devtools)
# Load nflscrapr with the following command
# devtools::install_github(repo = "maksimhorowitz/nflscrapR")
require(nflscrapR)

################################### Main ################################


# Load the data
  # 2009 Play by Play
pbp2009 <- read.csv("reg_pbp_2009.csv", as.is = TRUE, header = TRUE)
View(pbp2009)

  # Lots of interesting data, try to get an idea of what is actually available
names(pbp2009)


# Questions of interest to me (Matt)
  # When should a team actually punt, how can we quantify this?
    # We have information on expected points for each team, kick_distance (and I guess competency)
  # Improved field goal strategy, can we find the critical point at which E(gain off) = E(gain def) based on freq of miss?
    # FG distance, hit/miss, and other pertinent stats available
  # Analysis of left foot vs. right foot kickers
    # Is Belichik right to choose opposite footed punters, with more muffed punts?
  
  # Does up tempo offence in the first half offer any benefit in the second half (e.g. fatigue, roughly noticeable by points scored)
    # We have no huddle information and can identify hurry up plays as such, possibly time on clock after end of last play and start of this play

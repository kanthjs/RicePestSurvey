#
#
#
# load package #
library(tidyverse)
library(vroom)
survel_url <- "https://docs.google.com/spreadsheets/d/e/2PACX-1vTfroOxkmc-3ZYKBQ2LerRw2tmK2C3aVMJiIXbpta7I48U42qgeUosPh2dmSYkF1EAid7iUKJflylEL/pub?gid=769414447&single=true&output=csv"

survey = read_csv(file = survey_url, 
                  col_types = "ccfcfddfffdddddddddddddddddddddddddddddcc")
# ignore warning message

# data frame for replace thai data with eng data
station_name_url <- "https://docs.google.com/spreadsheets/d/e/2PACX-1vSajGerDBPsitZjCEOYhv2ls704QBXkWP9haY3BpARHCtrOTjWZVJyRgrf2BrKlSZPCr-Px-VAm__Qe/pub?gid=0&single=true&output=csv" 

rdstationE_T = read_csv(file = station_name_url, col_types = "ff")

#provinceE_T = read_csv()

#RiceStageE_T = read_csv()

#RiceVarietyE_T = read_csv()
data = "https://docs.google.com/spreadsheets/d/e/2PACX-1vTfroOxkmc-3ZYKBQ2LerRw2tmK2C3aVMJiIXbpta7I48U42qgeUosPh2dmSYkF1EAid7iUKJflylEL/pub?gid=769414447&single=true&output=csv"

library(tidyverse)

survey = read_csv(file = data, col_types = "ccfcfddfffdddddddddddddddddddddddddddddcc")

rdstationE_T = read_csv()

provinceE_T = read_csv()

RiceStageE_T = read_csv()

RiceVarietyE_T = read_csv()
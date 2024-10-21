# Install the necessary package
install.packages("tidyverse")
install.packages("naniar")
library(tidyverse)
library(gtsummary)
library(easystats)
library(gt)
install.packages("glue")
library(glue)

# Load necessary libraries
library(tidyverse)
library(ggplot2)
library(tseries)
library(naniar)
# Install the necessary package
install.packages("tidyverse")

# Load necessary libraries
library(tidyverse)
library(ggplot2)
library(tseries)
# Install required packages
install.packages("readxl")
install.packages("writexl")
install.packages("tseries")
install.packages("ggplot2")
install.packages("forecast")

# Load necessary libraries
library(readxl)
library(tseries)
library(ggplot2)
library(forecast)
library(dplyr)

library(readxl)

library(readxl)
Coded <- read_excel("Preprocess/Coded.xlsx")
View(Coded)

print(Coded)

# check missing data 
sum(is.na(Coded))
miss_var_summary(Coded)
gg_miss_var(Coded)

# check duplicated rows 
sum(duplicated(Coded))


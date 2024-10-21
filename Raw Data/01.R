
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
AMR_KAP_Data <- read_excel("Raw Data/AMR_KAP_Data.xlsx")
View(AMR_KAP_Data)
print(AMR_KAP_Data)

# check missing data 
sum(is.na(AMR_KAP_Data))
miss_var_summary(AMR_KAP_Data)
gg_miss_var(AMR_KAP_Data)

# check duplicated rows 
sum(duplicated(AMR_KAP_Data))
# Load necessary libraries
library(ggplot2)
library(dplyr)

# Example data: Replace 'Category' with an actual column name from your dataset
# Group by the categorical variable and summarize counts
AMR_KAP_Data %>%
  count(Category) %>%
  ggplot(aes(x = Category, y = n, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(title = "Bar Chart of Category", x = "Category", y = "Count") +
  theme_minimal()


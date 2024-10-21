library(tidyverse)
library(gtsummary)
library(easystats)
library(gt)

# read data 

AMR_KAP_No_Code <- read_excel("Raw Data/AMR_KAP_No_Code.xlsx")

View(AMR_KAP_No_Code)
print(AMR_KAP_No_Code)
# correlation matrix
AMR_KAP_No_Code |> 
  select(18:28) |> 
  correlation() |> 
  summary(redundant = T)

AMR_KAP_No_Code |> 
  select(18:28) |> 
  correlation() |> 
  summary(redundant = T) |> 
  plot()

# read data 
data1 <- readxl::read_excel("raw_data/AMR_KAP_No_Code.xlsx", sheet = 1)


# Demographic characteristics of study participants 
data1 |> 
  select(1:11) |> 
  tbl_summary() |> 
  as_gt() |> 
  gtsave("tables/Table1_Demographics.docx")


# read data sheet2 
data2 <- readxl::read_excel("raw_data/AMR_KAP_No_Code.xlsx", sheet = 2)
# Demographic characteristics of study participants 
AMR_KAP_No_Code|> 
  select(1:11) |> 
  tbl_summary() |> 
  as_gt() |> 
  gtsave("tables/Table1_Demographics.docx")



# Impact of education on level of knowledge of antibiotics 

y = mx + c

model <- lm(TotalKnowledgeScore ~ `Parent’s education level`, data = data2)

summary(model)

report(model)



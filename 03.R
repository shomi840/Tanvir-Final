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

 library(gtsummary)
 library(tidyverse)
 head(AMR_KAP_No_Code) |> gt::gt()
 tbl_summary(
    sm_ Your average household income per month (BDT),
    by =  Your average household income per month (BDT),
    )


 
 
 #
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


# load packages
library(tidyverse)
library(easystats)
library(gtsummary)
library(gt)

library(tidyverse)
library(easystats)
library(gtsummary)
library(gt)
Coded <- read_excel("Preprocess/Coded.xlsx")
View(Coded)
lin_model <- lm(QOL_Score ~ Gender, data = Coded)
summary(lin_model)    # Summary of the model
report(lin_model)     # Easystats' report for better interpretation
Coded |> 
  select(1:17, QOL_Score) |> 
  tbl_uvregression(
    method = lm, 
    y = QOL_Score
  ) |> 
  bold_p(t = 0.05) |>  # Bold significant p-values
  as_gt() |> 
  gtsave("tables/Table6_UV_LinReg.docx")
# Multivariate Linear Regression (adding Age and Level of Education)
lin_model_multi <- lm(QOL_Score ~ Gender + Age + Education_Level, data = Coded)
summary(lin_model_multi)
report(lin_model_multi)



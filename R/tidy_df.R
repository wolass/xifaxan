tidy_df <- function(){


require(tidyverse, quietly=T)

df <- readxl::read_excel("baza danych fibraxine.xlsx")

names(df)[1] <-
  c("pacjent")
df <- mutate(df, grupa = factor(ifelse(pacjent < 59, "placebo","verum")))
return(df)
}

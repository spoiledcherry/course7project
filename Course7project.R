install.packages("devtools")
devtools::install_github("jhudsl/collegeIncome")
library(collegeIncome)
data(college)
devtools::install_github("jhudsl/matahari")
library(matahari)
dance_start(value = FALSE, contents = FALSE)
pairs(college[c("median", "rank", "major_code", "perc_men", "perc_college_jobs")])
fit1 <- lm(median~major_code+perc_men+perc_college_jobs, data = college)
summary(fit1)
fit2 <- lm(median~major_code, data = college)
summary(fit2)

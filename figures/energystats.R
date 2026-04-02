library(dplyr)

raw <- read.csv('energy.csv',header=TRUE)
data <- tibble(raw)
m=0.0055
g=9.81

data <- mutate(data,
     GPE_J = m*g*h_m,
     diff = LKE_J-GPE_J)

print(data)

summary_data <- summarise(data,
	     meanLKE = mean(LKE_J),
	     sdLKE = sd(LKE_J),
	     meanGPE = mean(GPE_J),
	     sdGPE = sd(GPE_J),
	     meandiff = mean(diff),
	     sddiff = sd(diff))
print(summary_data)
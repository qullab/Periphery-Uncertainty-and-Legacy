#Generate simulated firm office locations using ordered logistic regression 

require(foreign)
require(ggplot2)
require(MASS)
require(Hmisc)
require(reshape2)

regression_file_path <- "../Data/ProcessingData/data_2018/for_regression_model.csv" 
data = read.csv(file=regression_file_path, header=TRUE, sep=",")

pred_value <- factor(data$Size, ordered=is.ordered(data$Size))
model <- polr(pred_value ~ F0 + F1 + F2 + F3 + F4 + C0 + C1 + C2 + C3 + C4, data = data, Hess=TRUE)

probs <- predict(model, data, type="probs")
probs_df <- as.data.frame(matrix(unlist(probs), nrow = 9588))

results <- data.frame()

for (i in 1:nrow(probs_df)){
  prob <- probs_df[i,]
  print(prob)
  result = sample(c(0,1,2,3,4,5), size = 1000, replace = TRUE, prob = prob)
  results <- rbind(results, result)
}

final_result <- cbind(data, results)

write.csv(final_result, file = "../Data/ProcessingData/data_2018/ordered_logistic_regression_modeling_result.csv")



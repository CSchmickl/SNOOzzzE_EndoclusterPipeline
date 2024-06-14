# apply_EC_model.R
SNOOzzzE_EC_model <- readRDS("SNOOzzzE_Endocluster_Model_VVV_6.rds")

means_training <- read.csv("means_training.csv", header = TRUE)
means_training <- means_training$x
sds_training <- read.csv("sds_training.csv", header = TRUE)
sds_training <- sds_training$x

library(dplyr)
library(mclust)

apply_EC_model <- function(new_data) {
  # Normalize traits using the same mean and SD as in the SNOOzzzE training set
  new_data[2:6] <- sweep(new_data[2:6], 2, means_training, `-`)
  new_data[2:6] <- sweep(new_data[2:6], 2, sds_training, `/`)
  summary(new_data) # means likely close to zero
  # Apply the model to the normalized new_data
  new_data$vvv6 <<- as.factor(predict(SNOOzzzE_EC_model, new_data[,2:6])$classification)
}

# Example usage
# new_data <- read.csv("example_data/sample_data.csv", header = TRUE)
# apply_EC_model(new_data)
# print(new_data$vvv6)
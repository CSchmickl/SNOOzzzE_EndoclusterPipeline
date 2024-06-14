# SNOOzzzE_EndoclusterPipeline

This repository contains an R model and a script to apply it to new data.

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/CSchmickl/SNOOzzzE_EndoclusterPipeline.git

2. Load the model and apply it to your data

SNOOzzzE_EC_model <- readRDS("SNOOzzzE_Endocluster_Model_VVV_6.rds")

apply_model <- function(new_data) {
  predictions <- predict(SNOOzzzE_EC_model, new_data)
  return(predictions)
}

# Example usage
# new_data <- read.csv("sample_data.csv")
# predictions <- apply_model(new_data)
# print(predictions)

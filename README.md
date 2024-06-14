# Applying the SNOOzzzE Endotype-Cluster Model to New Trait Data

This repository contains an end-to-end pipeline for applying a Latent Profile Analysis (LPA) model (VVV, 6 profiles; developed in the SNOOzzzE cohort using mclust) to new trait data (derived from routine polysomnography using PUPbeta). The model will assign each observation to one of 6 endotype clusters (technically "profiles"). 

Please refer to the following publications for more details on PUPbeta and the application of the model:
- Sands et al.
- Terril et al.

### Quick start with example

1. Clone or download this repository in your working directory
2. Set directory to the newly created folder: `setwd("SNOOzzzE_Endocluster_LPA_Pipeline/")`
3. Run `source("apply_EC_model.R")`
4. Run an example with sample data

```
new_data <- read.csv("example_data/sample_data.csv", header = TRUE)
summary(new_data)
apply_EC_model(new_data)
summary(new_data) # note now there is a variable called vvv6 which shows the cluster ID for each observation
```

### Using your own data

To use the function `apply_EC_model()`, you will need a `.csv` file containing the following elements:
- First column: study_id (your unique identifier for each observation; Note: w/o this column code will not work)
- Second to last column: Trait variables with the same spelling and order as in the sample_data file. These variables should be numerically coded and correspond to the trait variables available from PUPbeta.

Save the `.csv` file in your working directory and run (change file name accordingly):

```
new_data <- read.csv("my_data.csv", header = TRUE) 
apply_EC_model(new_data)
summary(new_data$vvv6) # Shows the cluster ID
```

This will apply the LPA-model developed in the SNOOzzzE cohort to your trait data and assign each observation to one of the 6 endotype clusters (technically "profiles").

### Questions or comments

Please e-mail cschmickl@health.ucsd.edu

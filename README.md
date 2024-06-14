# Applying the SNOOzzzE Endotype-Profile Model to New Trait Data

This repository contains an end-to-end pipeline for applying a Latent Profile Analysis (LPA) model developed in the SNOOzzzE cohort and apply it to new trait data (derived from routine polysomnography using PUPbeta).

Please refer to the following publications for more details on PUPbeta and the application of the model:
- Sands et al.
- Terril et al.

### Quick start with example

1. Clone or download this repository in your working directory
2. Set directory to the newly created folder: `setwd("SNOOzzzE_EndoclusterPipeline/")`
3. Run `source("apply_EC_model.R")`
4. Run an example with sample data

```
apply_EC_model(input_f = "example_data/sample_data.csv", project_name = "SampleProject")
```

### Using your own data

To use the function `apply_EC_model()`, you will need a `.csv` file containing the following elements:
- First column: study_id (your unique identifier for each observation)
- Second to last column: Trait variables with the same spelling and order as in the sample_data file. These variables should be numerically coded and correspond to the trait variables available from PUPbeta.

Save the `.csv` file in your working directory and run (change file name and project name accordingly:

```
apply_EC_model(input_f = "my_data.csv", project_name = "MyProject")
```

This will apply the LPA-model developed in the SNOOzzzE cohort to your trait data and assign each observation to one of the 6 endotype clusters (technically "profiles").

### Questions or comments

Please e-mail cschmickl@health.ucsd.edu

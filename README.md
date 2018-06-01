# README

Our objective was to tidy the dataset from experiments with fitbit equipment and prepare it for further analysis. We merged the training and test datasets and made another tidy dataset "result.txt" with average values for each activity and subject.

## Script

Our script "run_analysis.R" is in the root folder and it takes datasets from "train" and "test" folders. It also uses some of the connective datasets from folder "text files".

Upon running it from console using `source("run_analysis.R")` produces a new tidy dataset "result.txt".

## Aditional info

All of the raw dataset we used resides in "train", "test", and "text files" folders. In the folder "text files" you can find "RAW_README.txt" and "features_info.txt" which describe how raw datasets were obtained and the meaning of their variables.

"CodeBook.md" in the root folder contains description of our transformation and variables of the "result.txt" tidy dataset.
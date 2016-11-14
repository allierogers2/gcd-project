=================================================
Allie Rogers
Getting and Cleaning Data Course Project
November 12, 2016
=================================================

This script uses magrittr, dplyr and tidyr to transform Samsung motion detector
data into a useable format. The code first reads in 8 files from the UCI HAR 
dataset. Next, cbind and rbind clip the files together to form a single
dataset. We use dplyr to select only the mean and standard deviation
measurements from the full dataset. Then, gsub is called to apply
the activity labels to the dataset. Column names are edited into a more descriptive
format. We create a key variable to specify that each subject-activity combination
is a single observation. Group_by and summarize_each are called to create a new 
dataset with the average of each variable for each unique key. Finally, separate
is used to break key into subject and activity columns to create a tidy dataset.

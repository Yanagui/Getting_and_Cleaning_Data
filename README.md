## Getting and Cleaning Data - Project Course
==============================================

## Origins, Processes and Results


### Origins:
In order to create a tidy data as asked, it is necessary to download and unzip the all bases collected from the accelerometers from the Samsung Galaxy S smartphone saved in this link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

After that, you must set in R Studio or R application the directory where the folder with the bases was unzipped.


### Processes:
Once the folder is unzipped and the directory at R is setted you can run the run_analisys.R script.

The script will follow these steps:

1) Load all bases:

  1a) Description of activities: activity_labels.txt 
  
  1b) Code of activities by file type: y_train.txt and y_test.txt
  
  1c) Subjects by file type: subject_train.txt and subject_test.txt
  
  1d) Feature names: features.txt
  
  1e) Data set by file type: X_train.txt and X_test.txt
  
2) Merge all bases by file type: train and test;

3) Create a unique data set using the train and test bases;

4) Define the feature names with terms: "mean" and "std" (standard deviation) in order to restrict and later allow to create the tidy base more easily;

5) Rename the columns names to the appropriately labels;

6) Create a new data set with the average of each variable for each activity and each subject.


### Results
After run the script, you will get two bases but only the second data set will be save at the directory (the same folder where the bases were unzipped):

1o. A data set with 81 variables and 10299 observations named as "dataset"

2o. A data set with 81 variables and 180 observations named as "tidydataset"

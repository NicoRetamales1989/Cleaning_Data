---
        title: "Cleaning Data"
author: "Nicolas Retamales"
date: "08/09/2021"
output:
        html_document:
        keep_md: yes
---
        
## Project Description
This project is a part of the assessment for the course Getting and Cleaning of John Hopkins University

##Study design and data processing

*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement. 
*Uses descriptive activity names to name the activities in the data set
*Appropriately labels the data set with descriptive variable names. 
*-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Collection of the raw data
Raw data was downloaded from here  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

##Description of the variables
General description of the file including:
- Dimensions of the dataset: 180 rows and 22 columns

- Variables present in the dataset
"subject"          "y"                "X_mean"           "X_sd"             "body_acc_x_mean" 
"body_acc_x_sd"    "body_acc_y_mean"  "body_acc_y_sd"    "body_acc_z_mean"  "body_acc_z_sd"   
"body_gyro_x_mean" "body_gyro_x_sd"   "body_gyro_y_mean" "body_gyro_y_sd"   "body_gyro_z_mean"
"body_gyro_z_sd"   "total_acc_x_mean" "total_acc_x_sd"   "total_acc_y_mean" "total_acc_y_sd"  
"total_acc_z_mean" "total_acc_z_sd"

- Class of the variable
subject numeric
y numeric
X_mean: numeric
X_sd: numeric
body_acc_x_mean: numeric
body_acc_x_sd: numeric
body_acc_y_mean: numeric
body_acc_y_sd: numeric
body_acc_z_mean: numeric
body_acc_z_sd: numeric
body_gyro_x_mean: numeric
body_gyro_x_sd: numeric
body_gyro_y_mean: numeric
body_gyro_y_sd: numeric
body_gyro_z_mean: numeric
body_gyro_z_sd: numeric
total_acc_x_mean: numeric
total_acc_x_sd: numeric
total_acc_y_mean: numeric
total_acc_y_sd: numeric
total_acc_z_mean: numeric
total_acc_z_sd: numeric

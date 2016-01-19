# Cleaning data Coursera project - Readme
## Author : Joanne Breitfelder

This work has been realised in the framework of the online specialisation in 
Data Science provided by the Johns Hopkins University on Coursera. The aim is to
write a pipeline which cleans step-by-step a complex dataset.

Important : to run "run_analysis.R" you first need to set "Cleaning_data" as your working directory.

## Human Activity Recognition Using Smartphones Dataset Version 1.0 :

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Università degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. activityrecognition@smartlab.ws www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.


## What you will find in this repository :

* run_analysis.R :
The pipeline which cleans and reduces the data

* CodeBook.md :
Details about the "run_analysis.R" pipeline and explanations about the reduced dataset

* The folders "test" and "train" :
Measurements made on each subject

* activity_labels.txt :
List of the different activities made by the subjects

* features.txt and features_info.txt :
List of the different types of measurements (features) that have been undertaken (mean acceleration, max acceleration, etc..), and explanations file

* Readme.txt
Overall explanations about the experiment and the data

* tidy_dataset.txt
The final tidy table





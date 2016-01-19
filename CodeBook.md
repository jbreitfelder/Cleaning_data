# CodeBook

# What does the "run_analysis.R" code do to the raw data?

## Reading the data

* It first sets the paths of the different raw data files
* Then it reads the labels of the activities, contained in the "activity_labels.txt" file
* To finish the files reading, it reads the features names, contained in the second column of the "features.txt" files

## Merging the training and the test datasets

We merge all the "train" and "test" through a "rbind()" function

## Extracting the columns containing mean() and std() measurments

* We keep all the columns where "mean()" or "std()" are present, through a "grep" function.
* The index of the columns we want to keep are all in the vector "index".

## Creating a new global dataset : 

* The "Data" table contains all the data put together
* We rename the different columns to make the names more understandable
* Then we merge the "Data" table with the one containg the activity labels, to give more understandable names to the activities

## Creating another tidy data set with the average of each variable

## Writing the table in an output file

# Some information about the reduced data...

* Details about the experiment :

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

* Details about the columns of the reduced tidy dataset :

Feature Selection :

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time') were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time_body.acceleration.XYZ and time_gravity.acceleration.XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing freq_body.aceleration.XYZ, freq_body.acceleration.jerk.XYZ,... (Note the 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

time_body.acceleration.XYZ

time_gravity.acceleration.XYZ

time_body.acceleration.jerk.XYZ

time_body.gyroscope.XYZ

time_body.gyroscope.jerk.XYZ

time_body.acceleration.mag

time_gravity.acceleration.mag

time_body.acceleration.jerk.mag

time_body.gyroscope.mag

time_body.gyroscope.jerk.mag

freq_body.acceleration.XYZ

freq_body.acceleration.jerk.XYZ

freq_body.gyroscope.XYZ

freq_body.acceleration.mag

freq_body.acceleration.jerk.mag

freq_body.gyroscope.mag

freq_body.gyroscope.jerk.mag

The set of variables that were estimated from these signals are: 

mean(): Mean value

std(): Standard deviation

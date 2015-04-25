# CodeBook for Cleaning Data
--------
This code book describes the transformation work that has been done on  the data set provided to clean up the data.  
# Data Source  
-----

* Original Data Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
* Description of Data set:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

## Data Information
------
* The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
* The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
* For each record it is provided:
=============
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
 -Triaxial Angular velocity from the gyroscope.
 -A 561-feature vector with time and frequency domain variables. 
 -Its activity label.
 -An identifier of the subject who carried out the experiment.
---------------
# Data Files used
-------------

* features_info.txt : Shows information about the variables used on the feature vector.
* features.txt : List of all features
* activity_labels.txt:Links the class labels with their activity name
* train/X_train.txt:Training set
* train/y_train.txt:Training labels
* test/X_test.txt:Test set
* test/y_test.txt:Test labels
The following files are available for the train and test data. Their descriptions are equivalent.
- train/subject_train.txt:Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
- train/Inertial Signals/total_acc_x_train.txt:The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- train/Inertial Signals/body_acc_x_train.txt:The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- train/Inertial Signals/body_gyro_x_train.txt:The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
# Transformation details
-----------
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement
3.Give appropriate name to columns wherever applicable.
4.Appropriately labels the data set with descriptive activity names.
5. Create independent tidy data set with the average of each variable for each activity and each subject
# Implementing run_analysis.R
-------------------
1. Read the traing data set from ./data/train/X_train.txt file
2. read the test data set from ./data/test/X_test.txt
3.Merge the two data obtained in step 1 and step 2 above
4. Read ./data/features.txt file to obtain measurements on mean and standard deviation
5. Merge teest label and training label and test subject and training subject
6. Label the column appropriately
7.Determine the mean of all the activity in the merge data set and output the data to a file


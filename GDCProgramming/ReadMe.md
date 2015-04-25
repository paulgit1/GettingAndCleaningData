# Getting and Cleaning Data
----------
## Course Project
--------
You should create one R script called run_analysis.R that does the following.
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# Steps to execute on Course Project
----------
1.Create a Folder and name it for e.g RWorkSpace
2.Create another folder called data inside the folder created in step 1
3.Download the data and put it under data folder created in step 2
4. Put run_analysis.R file under folder creatd in Step 1 >>ReadMe.md

echo 4. Put run_analysis.R file under folder creatd in Step 1
5.Open R Console or R Studio set the working directory to the newly created folder in Step 1 using setwd() command
6.Run source(run_analysis.R), this will generate merged_data.txt and tidy2.txt file in working directory

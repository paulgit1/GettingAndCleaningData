## Merges the training and the test sets to create one data set.
trainingDataSet <- read.table("./data/train/X_train.txt")
testDataSet <- read.table("./data/test/X_test.txt")
mergedDataSet <- rbind(trainingDataSet,testDataSet)

##Extracts only the measurements on the mean and standard deviation for each measurement. 
featureDataSet <- read.table("./data/features.txt")
meanStdindex <- grep("mean\\(\\)|std\\(\\)",featureDataSet[,2])
mergedDataSet <- mergedDataSet[,meanStdindex]
names(mergedDataSet) <- gsub("\\(\\)", "", featureDataSet[meanStdindex, 2]) # remove "()"
names(mergedDataSet) <- gsub("mean", "Mean", names(mergedDataSet)) # capitalize M
names(mergedDataSet) <- gsub("std", "Std", names(mergedDataSet)) # capitalize S
names(mergedDataSet) <- gsub("-", "", names(mergedDataSet)) # remove - in column header

#Uses descriptive activity names to name the activities in the data set
trainingLabel <- read.table("./data/train/y_train.txt")
testLabel <- read.table("./data/test/y_test.txt")
mergeLabel <- rbind(trainingLabel,testLabel)
activityLabelDataSet <- read.table("./data/activity_labels.txt")
activityLabelDataSet[, 2] <- gsub("_", " ", activityLabelDataSet[, 2])
activityLabel <- activityLabelDataSet[mergeLabel[,1],2]
mergeLabel[,1] <- activityLabel
names(mergeLabel) <- 'Activity'

# Appropriately labels the data set with descriptive activity names. 
trainingSubject <- read.table("./data/train/subject_train.txt")
testSubject <- read.table("./data/test/subject_test.txt")
mergeSubject <- rbind(trainingSubject,testSubject)
names(mergeSubject) <- "subject"
tidyData <- cbind(mergeSubject, mergeLabel, mergedDataSet)
write.table(tidyData, "merged_data.txt") 

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
temp <- tidyData[,3:dim(tidyData)[2]]
avgDataSet <- aggregate(temp,list(tidyData$subject,tidyData$Activity),mean)
write.table(format(avgDataSet, scientific=T), "tidy2.txt",row.names=F, col.names=F, quote=2)


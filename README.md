## ReadMe -  Human Activity Recognition Using Smartphones

This repository has information about how to create a tidy data set from the Human Activity Recognition database, which collected information from the recordings of 30 subjects performing 6 activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. A full description of this data base is provided in the link:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The database files can be found also in: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following are the steps to reproduce the generation of the tidy data set:

#### 1. Download the Human Activity Recognition database files from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, and copy the full data in the working folder. The structure of the directory (i.e. folders and subfolders and files) must be preserved.

The following are the files in the database:
The set is divided into training and test sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

* ./UCI HAR Dataset/activity_labels.txt: 
Has a list of activity labels to link the activity id to the activity label (name).
* ./UCI HAR Dataset/features.txt: 
For each sliding window of time where signals were measured, 561 features were calculated. This is a list of these signals and their id number.
* ./UCI HAR Dataset/features_info.txt: 
This file describes how the 561 features were calculated.
* ./UCI HAR Dataset/README.txt: 
Describes the data set

* ./UCI HAR Dataset/test/subject_test: 
Sequence of subjects that performed the activities for each sliding window in the test data set 

* ./UCI HAR Dataset/test/X_test: 
Data of 561 features for each sliding window 

* ./UCI HAR Dataset/test/y_test: 
Sequence of Activities performed for each sliding window in the test data set 

* ./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test: 
Raw signals of body acceleration in the x axis for each sliding window  

* ./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test: 
Raw signals of body acceleration in the y axis for each sliding window

* ./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test: 
Raw signals of body acceleration in the z axis for each sliding window

* ./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test: 
Raw signals of body angular velocity from the gyroscope in the x axis for each sliding window.

* ./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test: 
Raw signals of body angular velocity from the gyroscope in the y axis for each sliding window.

* ./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test: 
Raw signals of body angular velocity from the gyroscope in the z axis for each sliding window.

* ./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test: 
Raw signals of total acceleration in the x axis for each sliding window.

* ./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test: 
Raw signals of total acceleration in the y axis for each sliding window.

* ./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test: 
Raw signals of total acceleration in the z axis for each sliding window.

The definitions, files and folder structure are the same for the train data set so they are not included here.


Train and Test datasets will be merged together.

#### 2. Load the script and run the run_analysis() function

Requisites:
* The script run_analysis.R must reside in the working directory
* The "UCI HAR" folder must reside in the working directory, with all the data set files as provided in the .zip file and the structure of directories/files preserved.  
* the package "reshape2" must be installed.

Output: The function writes the resulting tidy data set in the file "./tidyDataSet.txt", and also returns the tidy data set as a data frame.

Usage: 

* setwd(<your working directory>)  
* source("run_analysis.R")
* tidyDataset <- run_analysis()

Note:  The 9 signals files in the ./test/Inertial Signals and ./training/Inertial Signals folders were not used as they are not required.

#### 3. Prepare Activities data set for training and test. The output of this step is a data frame where the training and test sequence of activities are appended and the activities are labeled. The column names are assigned a descriptive name. The order of the original activities data set is preserved.   
  

* Read activity labels list
 
  activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt") 
  
* Get the sequence of activities observed for test and training, and append training and test rows together using rbind. Each record represents the activity for one sliding window. 

  trainActivities <- read.table("./UCI HAR Dataset/train/y_train.txt")

  testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt") 

  activities <- rbind(trainActivities,testActivities)
  
* Add a new column with the row.names to remember the original order of the records before merging (merge, which is done in the next step, changes the order of the records)
  
  activities<-data.frame(activities, rn= as.numeric(row.names(activities)))  
                                                                             
* Add a new column in the appended data set that has the "label" of the activity (i.e. WALKING, SITTING, etc.), by merging the appended dataset with the Activity labels dataset
  
  labeledActivities <- merge(activityLabels, activities, by = "V1", all.y=TRUE, sort=FALSE)    
                                                                                               
* Re-sort records based on the original row.names saved before

  labeledActivities <- labeledActivities[order(labeledActivities$rn),]                         
                                                                                              
* Reassign new row.names to the data set now that order is correct
  
  rownames(labeledActivities) <- labeledActivities$rn                                          

* Assign new descriptive variable names 
                                                                                              
  colnames(labeledActivities)[1]<- "activity" 
                                                 
  colnames(labeledActivities)[2]<- "activityType"
  
  
#### 4. Prepare Subjects data set for Training and Test. The output of this step is a data frame where the training and test sequence of subjects are appended. The column name is assigned a descriptive name.  The order of the original subjects data set is preserved.
  
* Get the subjects that performed the sequence of activities observed, for test and training.
* Append training and test rows together using rbind
* Assign a descriptive variable name 
  
  trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")

  testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

  subjects <- rbind(trainSubjects, testSubjects)
  
  colnames(subjects)[1] <- "subject"   
  
  
#### 5. Prepare Features Vector. The output of this step is a data frame where the training and test sequence of features are appended. Only the mean() and std() features are selected (only 66 features). The column names are assigned a descriptive name and ilegal characters are removed.  The order of the original subjects data set is preserved.


  
* Read features list and extract only mean() and std() features
  
  features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)                        
  selectedfeaturesMean <- features[grep("mean()", features$V2, fixed=TRUE), ]

  selectedfeaturesStd <- features[grep("std()", features$V2, fixed=TRUE), ]

  featuresMeanAndStd <- rbind(selectedfeaturesMean,selectedfeaturesStd)

  
* Format mean and sdt features so they can be used as descriptive column names (variables) (i.e. remove punctuation symbols, standardize names and convention, etc.)
  
  featuresMeanAndStd$V2 <- gsub("[[:punct:]]", "", featuresMeanAndStd$V2)
 
  featuresMeanAndStd$V2 <- gsub("mean", "Mean", featuresMeanAndStd$V2)

  featuresMeanAndStd$V2 <- gsub("std", "Std", featuresMeanAndStd$V2)

  featuresMeanAndStd$V2 <- gsub("BodyBody", "Body", featuresMeanAndStd$V2)

  featuresMeanAndStd$V2 <- gsub("^t", "time", featuresMeanAndStd$V2)

  featuresMeanAndStd$V2 <- gsub("^f", "freq", featuresMeanAndStd$V2)
  
  
* Read features vectors for training and test and append them together
  
  trainFeaturesVector <- read.table("./UCI HAR Dataset/train/X_train.txt")

  testFeaturesVector <- read.table("./UCI HAR Dataset/test/X_test.txt") 

  featuresVector <- rbind(trainFeaturesVector, testFeaturesVector)

  
* Extract only the mean() and std() features
  
  featuresVectorReduced <- featuresVector[,featuresMeanAndStd$V1]

  
* Add descriptive names to the columns using the previously formatted variable names 
  
  colnames(featuresVectorReduced) <- featuresMeanAndStd$V2

  
Note: The following conventions were used for abbreviation of variable names in the features data frame. 
Complete words not used in order to preserve the variable names length as small and readable as possible.

time:for a time domain feature

freq: for a frequency domain feature

Acc: for Accelerometer

Gyro: for Gyroscope

Mag: for Magnitude

Std: for standard deviation


  
#### 6.  Now that subjects, labeled activities, and features data sets are prepared they will be merged into ONE data set. Merged by row names, so that the correct records are matched. The output of this step is a data frame where the Activities labeled, subjects, and features (reduced to 66) are merged together by row name.The order of the original data sets is preserved.

* Merge subjects and Activities
* Merge the resulting dataset with features
* Eliminate columns rn and activity. Keep activity type, subject and the 66 measurements
  
  humanActivity <- merge(labeledActivities, subjects, by.x = "rn", by.y="row.names", all.x= TRUE, sort = FALSE)

  humanActivity <- merge(humanActivity, featuresVectorReduced, by.x = "rn", by.y="row.names", all.x= TRUE, sort = FALSE)

  
  drops <- c("rn","activity")

  humanActivity <- humanActivity[,! (names(humanActivity) %in% drops)]
  
  
#### 7. FINAL STEP: Create a Tidy Data Set with the average of each variable for each activity and each subject.


  
* Reshape (melt) the dataset from step 4 to have the measurements in rows instead of columns. Tne new dataset would have columns: ActivityType, subject, variable, and value, where the variable and value columns will have each of the measurements name and its value . This creates a narrow, tall data set instead. 

  require (reshape2)

  humanActivityMelt <- melt(humanActivity,id=c("activityType","subject"), measure.vars=c(names(humanActivity[3:68])))


* dcast the resulting dataset to put back the measurements as columns and calculate at the same time the mean by activityType, subject, and measurement


  humanActivityTidy <- dcast(humanActivityMelt, activityType + subject ~ variable, mean )


* Write the resulting Data set to a file in the working directory, and return the data frame
  

  write.table(humanActivityTidy,file = "./tidyDataSet.txt", row.names = FALSE)

  humanActivityTidy
 
 
  
#### Additional Notes: 

* The variables in the resulting tidy data set have not been renamed to represent the "MeanOf" the variable (for example rename timeBodyAccMeanX as MeanOftimeBodyAccMeanX), however the definition states that these values in fact are summarized by the mean function. This modification will be done in the next version of the script.
 
* The following code reads the raw signals files, however these files are not used in the solution, so this code not included in the script.   
    
 
    
   testBodyAccX <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt") 
   testBodyAccY <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
   testBodyAccZ <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
   
   testBodyGyroX <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
   testBodyGyroY <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
   testBodyGyroZ <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
   
   testTotalAccX <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
   testTotalAccY <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
   testTotalAccZ <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
   
   trainBodyAccX <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt") 
   trainBodyAccY <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
   trainBodyAccZ <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
   
   trainBodyGyroX <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
   trainBodyGyroY <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
   trainBodyGyroZ <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
   
   trainTotalAccX <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
   trainTotalAccY <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
   trainTotalAccZ <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
   
 
  




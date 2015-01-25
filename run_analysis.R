# Requisites:
# The script run_analysis.R must reside in the working directory
# The "UCI HAR" folder must reside in the working directory, with all the data set files as provided in the .zip file (./UCI HAR/*) 
# the package "reshape2" must be installed.

# Output: The function writes the resulting tidy data set in the file "./tidyDataSet.txt", and returns the tidy data set as a data frame.

# Usage: 

# setwd(<your working directory>)  
# source("run_analysis.R")
# tidyDataset <- run_analysis()

# The 9 signals files in the ./test/Inertial Signals and ./training/Inertial Signals folders were not used as they are not required    

run_analysis <- function () {  
  
  # 1. Prepare Activities data set for Training and Test. 
  #
  #   - Read activity labels list
  #   - Get the sequence of activities observed for test and training. Each record represents the activity for one sliding window. 
  #   - Append training and test rows together using rbind
  #   - Add a new column in the appended data set, that has the "label" of the activity (i.e. WALKING, SITTING, etc.).
  #       (i.e. for this, merge the appended dataset with the Activity labels dataset)
  #       Note: the merge function changes the order of the records. To remember the order, the row.names were added as a column before merging.
  #             In this data set the row.names have the row number, so they can be used to re-sort when needed.
  
  activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt") 
  
  trainActivities <- read.table("./UCI HAR Dataset/train/y_train.txt")
  testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt") 
  activities <- rbind(trainActivities,testActivities)
  
  
  activities<-data.frame(activities, rn= as.numeric(row.names(activities)))                   # Add a new column with the row.names to 
                                                                                              # remember the original order of the records. 
  
  labeledActivities <- merge(activityLabels, activities, by = "V1", all.y=TRUE, sort=FALSE)   # merge activities with activity labels 
  labeledActivities <- labeledActivities[order(labeledActivities$rn),]                        # resort records based on the original row.names saved before
  
  rownames(labeledActivities) <- labeledActivities$rn                                         # reassign new row.names now that order is correct
  colnames(labeledActivities)[1]<- "activity"                                                 # reassign new descriptive variable names 
  colnames(labeledActivities)[2]<- "activityType"
  
  
  # 2. Prepare Subjects data set for Training and Test. 
  
  #   - Get the subjects that performed the sequence of activities observed, for test and training.
  #   - Append training and test rows together using rbind
  #   - Assign a descriptive variable name 
  
  trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  subjects <- rbind(trainSubjects, testSubjects)
  
  colnames(subjects)[1] <- "subject"   
  
  
  # 3. Prepare Features Vector
  
  #   - Read features list and extract only mean() and std() type of measurements.
  #   - Read the features vector for each sliding window, for both test and training.
  #   - Append training and test rows together using rbind
  #   - Reduce the featuresVector in the appended data set to have only the mean() and std() measurements. Reduced from 561 to 66 measurements. 
  #           Note: this step is done before merging to reduce the processing time.
  #   - Assign descriptive names to variables
  

  
  # Read features list and extract only mean() and std() features
  
  features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)                        
  selectedfeaturesMean <- features[grep("mean()", features$V2, fixed=TRUE), ]
  selectedfeaturesStd <- features[grep("std()", features$V2, fixed=TRUE), ]
  featuresMeanAndStd <- rbind(selectedfeaturesMean,selectedfeaturesStd)
  
  # format mean and sdt features so they can be used as descriptive column names (variables)
  # (i.e. remove punctuation symbols, standardize names and convention, etc.)
  
  featuresMeanAndStd$V2 <- gsub("[[:punct:]]", "", featuresMeanAndStd$V2) 
  featuresMeanAndStd$V2 <- gsub("mean", "Mean", featuresMeanAndStd$V2)
  featuresMeanAndStd$V2 <- gsub("std", "Std", featuresMeanAndStd$V2)
  featuresMeanAndStd$V2 <- gsub("BodyBody", "Body", featuresMeanAndStd$V2)
  featuresMeanAndStd$V2 <- gsub("^t", "time", featuresMeanAndStd$V2)
  featuresMeanAndStd$V2 <- gsub("^f", "freq", featuresMeanAndStd$V2)
  
  
  # Read features vectors for training and test and append them together
  
  trainFeaturesVector <- read.table("./UCI HAR Dataset/train/X_train.txt")
  testFeaturesVector <- read.table("./UCI HAR Dataset/test/X_test.txt") 
  featuresVector <- rbind(trainFeaturesVector, testFeaturesVector)
  
  # extract only the mean() and std() features
  
  featuresVectorReduced <- featuresVector[,featuresMeanAndStd$V1]
  
  # Add descriptive names to the columns using the previously formatted variable names 
  
  colnames(featuresVectorReduced) <- featuresMeanAndStd$V2
  
  
  # 5.  Now that Subjects, Activities, and features data sets are prepared they will be merged into ONE final data set. 
  #     Merged by row names, so that the correct records are matched.
  #
  #     - Merge subjects and Activities
  #     - Merge the resulting dataset with features
  #     - Eliminate columns rn and activity. Keep activity type, subject and the 66 measurements
  
  humanActivity <- merge(labeledActivities, subjects, by.x = "rn", by.y="row.names", all.x= TRUE, sort = FALSE)
  humanActivity <- merge(humanActivity, featuresVectorReduced, by.x = "rn", by.y="row.names", all.x= TRUE, sort = FALSE)
  
  drops <- c("rn","activity")
  humanActivity <- humanActivity[,! (names(humanActivity) %in% drops)]
  
  
  # 6. FINAL STEP: Create a Tidy Data Set with the average of each variable for each activity and each subject.
  #   - reshape (melt) the dataset from step 5 to have the measurements in rows instead of columns. 
  #     Tne new dataset would have columns: ActivityType, subject, variable, and value, where the variable and value columns will have 
  #     each of the measurements and its value for each ACtivity type and subject. This creates a narrow, tall data set instead. 
  #   - dcast the resulting dataset to put back the measurements as columns and calculate at the ame time the mean by activityType, subject, and measurement
  
  require (reshape2)

  humanActivityMelt <- melt(humanActivity,id=c("activityType","subject"), measure.vars=c(names(humanActivity[3:68])))
  humanActivityTidy <- dcast(humanActivityMelt, activityType + subject ~ variable, mean )
  
  write.table(humanActivityTidy,file = "./tidyDataSet.txt", row.names = FALSE)
  
  humanActivityTidy
 
 
  
}    
  

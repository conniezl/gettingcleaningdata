## Code Book -  Human Activity Recognition Using Smartphones

This data set has the average by activity and individual, of 66 measurements calculated from signals taken from the accelerometer and gyroscope of the Samsung Galaxy S II smartphone, which was used by 30 individuals performing 6 types of activities during a series of sliding windows of time.

A full description of the data sets used to make this summarized data set, and the source data is available at: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones   

The following is detailed description of this data set.

### activityType : 
* Description: Activities performed.
* Record Type: factor
* Values:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING


### subject:
* Description: Number that Identifies the individuals that performed the activities using the smartphone. 30 individuals were evaluated.
* Record Type: int
* Values: 1 to 30 

### timeBodyAccMeanX:
* Description: The average by individual and activity, of the mean of the Body Acceleration time domain signals on axis x during a sliding window time period.  
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccMeanY  
* Description: The average by individual and activity, of the mean of the Body Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccMeanZ    
* Description: The average by individual and activity, of the mean of the Body Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeGravityAccMeanX  
* Description: The average by individual and activity, of the mean of the Gravity Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeGravityAccMeanY  
* Description: The average by individual and activity, of the mean of the Gravity Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeGravityAccMeanZ 
* Description: The average by individual and activity, of the mean of the Gravity Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccJerkMeanX 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccJerkMeanY 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccJerkMeanZ 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroMeanX    
* Description: The average by individual and activity, of the mean of the Body Gyroscope time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroMeanY    
* Description: The average by individual and activity, of the mean of the Body Gyroscope time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroMeanZ  
* Description: The average by individual and activity, of the mean of the Body Gyroscope time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroJerkMeanX 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Gyroscope time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroJerkMeanY  
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Gyroscope time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroJerkMeanZ 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Gyroscope time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccMagMean   
* Description: The average by individual and activity, of the mean of the Magnitude of the Body Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeGravityAccMagMean  
* Description: The average by individual and activity, of the mean of the Magnitude of the Gravity Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccJerkMagMean 
* Description: The average by individual and activity, of the mean of the Magnitude of the Jerk signals derived from the Body Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroMagMean  
* Description: The average by individual and activity, of the mean of the Magnitude of Body gyroscope time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroJerkMagMean
* Description: The average by individual and activity, of the mean of the Magnitude of the Jerk signals derived from the Body Gyroscope time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccMeanX       
* Description: The average by individual and activity, of the mean of the Body Acceleration frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccMeanY    
* Description: The average by individual and activity, of the mean of the Body Acceleration frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccMeanZ   
* Description: The average by individual and activity, of the mean of the Body Acceleration frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccJerkMeanX   
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccJerkMeanY  
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccJerkMeanZ  
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroMeanX      
* Description: The average by individual and activity, of the mean of the Body Gyroscope frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroMeanY      
* Description: The average by individual and activity, of the mean of the Body Gyroscope frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroMeanZ   
* Description: The average by individual and activity, of the mean of the Body Gyroscope frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccMagMean     
* Description: The average by individual and activity, of the mean of the Magnitude of the Body Acceleration frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccJerkMagMean 
* Description: The average by individual and activity, of the mean of the Magnitude of jerk signals derived from Body Acceleration frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroMagMean   
* Description: The average by individual and activity, of the mean of the Magnitude of the Body gyroscope frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroJerkMagMean
* Description: The average by individual and activity, of the mean of the Magnitude of the Jerk signals derived from the Body Gyroscope frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccStdX      
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccStdY      
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccStdZ       
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeGravityAccStdX  
* Description: The average by individual and activity, of the standard deviation of the Gravity Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeGravityAccStdY   
* Description: The average by individual and activity, of the standard deviation of the Gravity Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeGravityAccStdZ  
* Description: The average by individual and activity, of the standard deviation of the Gravity Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccJerkStdX   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccJerkStdY   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccJerkStdZ    
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroStdX      
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroStdY      
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroStdZ       
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroJerkStdX   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Gyroscope time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroJerkStdY  
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Gyroscope time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroJerkStdZ   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Gyroscope time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccMagStd     
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Body Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeGravityAccMagStd   
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Gravity Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyAccJerkMagStd  
* Description: The average by individual and activity, of the standard deviation of the Magnitude of the Jerk signals derived from the Body Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroMagStd    
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Body Gyroscope time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### timeBodyGyroJerkMagStd 
* Description: The average by individual and activity, of the standard deviation of the Magnitude of the Jerk signals derived from the Body Gyroscope time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccStdX        
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccStdY       
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccStdZ       
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccJerkStdX   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccJerkStdY    
* Description: he average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccJerkStdZ    
* Description: he average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroStdX      
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroStdY       
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroStdZ     
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccMagStd     
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Body Acceleration frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyAccJerkMagStd
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Jerk signals derived from Body Acceleration frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroMagStd     
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Body Gyroscope frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

### freqBodyGyroJerkMagStd 
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Jerk signals derived from Body Gyroscope frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1

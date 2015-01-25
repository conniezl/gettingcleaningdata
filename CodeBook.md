## Code Book -  Human Activity Recognition Using Smartphones

This data set has the average by activity and individual, of 66 measurements calculated from signals taken from the accelerometer and gyroscope of the Samsung Galaxy S II smartphone, which was used by 30 individuals performing 6 types of activities during a series of sliding windows of time.

A full description of the data sets used to make this summarized data set, and the source data is available at: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones   

The following is a detailed description of this data set.


### activityType : 
* Description: Activities performed.
* Record Type: factor
* Values:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYI


### subject:
* Description: Number that Identifies the individuals that performed the activities using the smartphone. 30 individuals were evaluated.
* Record Type: int
* Values: 1 to 30 

### timeBodyAccMeanX:
* Description: The average by individual and activity, of the mean of the Body Acceleration time domain signals on axis x during a sliding window time period. 
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyAccMeanY  
* Description: The average by individual and activity, of the mean of the Body Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values: between -1 and 1
* Units: The standard gravity units 'g'

### timeBodyAccMeanZ    
* Description: The average by individual and activity, of the mean of the Body Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeGravityAccMeanX  
* Description: The average by individual and activity, of the mean of the Gravity Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeGravityAccMeanY  
* Description: The average by individual and activity, of the mean of the Gravity Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeGravityAccMeanZ 
* Description: The average by individual and activity, of the mean of the Gravity Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeBodyAccJerkMeanX 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyAccJerkMeanY 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyAccJerkMeanZ 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyGyroMeanX    
* Description: The average by individual and activity, of the mean of the Body Gyroscope time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroMeanY    
* Description: The average by individual and activity, of the mean of the Body Gyroscope time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroMeanZ  
* Description: The average by individual and activity, of the mean of the Body Gyroscope time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroJerkMeanX 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Gyroscope time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroJerkMeanY  
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Gyroscope time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 
* Units: radians/second1

### timeBodyGyroJerkMeanZ 
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Gyroscope time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyAccMagMean   
* Description: The average by individual and activity, of the mean of the Magnitude of the Body Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeGravityAccMagMean  
* Description: The average by individual and activity, of the mean of the Magnitude of the Gravity Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 


### timeBodyAccJerkMagMean 
* Description: The average by individual and activity, of the mean of the Magnitude of the Jerk signals derived from the Body Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyGyroMagMean  
* Description: The average by individual and activity, of the mean of the Magnitude of Body gyroscope time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroJerkMagMean
* Description: The average by individual and activity, of the mean of the Magnitude of the Jerk signals derived from the Body Gyroscope time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyAccMeanX       
* Description: The average by individual and activity, of the mean of the Body Acceleration frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### freqBodyAccMeanY    
* Description: The average by individual and activity, of the mean of the Body Acceleration frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### freqBodyAccMeanZ   
* Description: The average by individual and activity, of the mean of the Body Acceleration frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### freqBodyAccJerkMeanX   
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyAccJerkMeanY  
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyAccJerkMeanZ  
* Description: The average by individual and activity, of the mean of the Jerk signals derived from the Body Acceleration frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyGyroMeanX      
* Description: The average by individual and activity, of the mean of the Body Gyroscope frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyGyroMeanY      
* Description: The average by individual and activity, of the mean of the Body Gyroscope frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyGyroMeanZ   
* Description: The average by individual and activity, of the mean of the Body Gyroscope frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyAccMagMean     
* Description: The average by individual and activity, of the mean of the Magnitude of the Body Acceleration frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyAccJerkMagMean 
* Description: The average by individual and activity, of the mean of the Magnitude of jerk signals derived from Body Acceleration frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyGyroMagMean   
* Description: The average by individual and activity, of the mean of the Magnitude of the Body gyroscope frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyGyroJerkMagMean
* Description: The average by individual and activity, of the mean of the Magnitude of the Jerk signals derived from the Body Gyroscope frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyAccStdX      
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeBodyAccStdY      
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeBodyAccStdZ       
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeGravityAccStdX  
* Description: The average by individual and activity, of the standard deviation of the Gravity Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeGravityAccStdY   
* Description: The average by individual and activity, of the standard deviation of the Gravity Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeGravityAccStdZ  
* Description: The average by individual and activity, of the standard deviation of the Gravity Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### timeBodyAccJerkStdX   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyAccJerkStdY   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyAccJerkStdZ    
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyGyroStdX      
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroStdY      
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroStdZ       
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroJerkStdX   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Gyroscope time domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroJerkStdY  
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Gyroscope time domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroJerkStdZ   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Gyroscope time domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyAccMagStd     
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Body Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeGravityAccMagStd   
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Gravity Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyAccJerkMagStd  
* Description: The average by individual and activity, of the standard deviation of the Magnitude of the Jerk signals derived from the Body Acceleration time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### timeBodyGyroMagStd    
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Body Gyroscope time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### timeBodyGyroJerkMagStd 
* Description: The average by individual and activity, of the standard deviation of the Magnitude of the Jerk signals derived from the Body Gyroscope time domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyAccStdX        
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### freqBodyAccStdY       
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### freqBodyAccStdZ       
* Description: The average by individual and activity, of the standard deviation of the Body Acceleration frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g'

### freqBodyAccJerkStdX   
* Description: The average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyAccJerkStdY    
* Description: he average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyAccJerkStdZ    
* Description: he average by individual and activity, of the standard deviation of the Jerk signals derived from the Body Acceleration frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyGyroStdX      
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope frequency domain signals on axis x during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyGyroStdY       
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope frequency domain signals on axis y during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyGyroStdZ     
* Description: The average by individual and activity, of the standard deviation of the Body Gyroscope frequency domain signals on axis z during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyAccMagStd     
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Body Acceleration frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyAccJerkMagStd
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Jerk signals derived from Body Acceleration frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: The standard gravity units 'g' 

### freqBodyGyroMagStd     
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Body Gyroscope frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

### freqBodyGyroJerkMagStd 
* Description: The average by individual and activity, of the Standard deviation of the Magnitude of the Jerk signals derived from Body Gyroscope frequency domain signals during a sliding window time period.
* Record Type: numeric
* Values:  between -1 and 1
* Units: radians/second

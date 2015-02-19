# Getting & Cleaning Data Class Project

# Study design
The data set presented here was obtained from the 'Human Activity Recognition Using Smartphones' dataset, which was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

In the original experiment, 30 subjects were outfitted with smartphones equipped with accelerometers and gyroscopes.  The subjects performed various 6 activities, and measurements of 3 component linear acceleration and 3 component angular velocity were taken. The data are reported as filtered time series data captured at a rate of 50 Hz.  A Fast Fourier Transform was applied to yield frequency domain signal.

Details on the raw data set can be found here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

This data set merges the training and test data from the above data set.  Only the mean and standard deviation of each measurement is reported.  Finally, the mean and standard deviation of all the measurements for each activity and each subject are reported in the final dataset.

# Code Book 

tBodyAccelerationMeanX                         
tBodyAccelerationMeanY                        
tBodyAccelerationMeanZ     
	* Mean of body acceleration measurements in time domain (3 components)
	* Units in g (1g = 9.80665 m/s^2)

 tBodyAccelerationStdDeviationX                
 tBodyAccelerationStdDeviationY                 
 tBodyAccelerationStdDeviationZ                
 	Standard deviation of body acceleration measurements in time domain (3 components)

 
tGravityAccelerationMeanX                      
tGravityAccelerationMeanY                     
tGravityAccelerationMeanZ  
 	Mean of gravity acceleration measurements in time domain (3 components)                    
 	Units in g (1g = 9.80665 m/s^2)

tGravityAccelerationStdDeviationX             
tGravityAccelerationStdDeviationY              
tGravityAccelerationStdDeviationZ
	Standard deviation of gravity acceleration measurements in time domain (3 components)             

tBodyAccelerationJerkMeanX                     
tBodyAccelerationJerkMeanY                    
tBodyAccelerationJerkMeanZ
	Mean of body jerk measurements (derivative of acceleration) in time domain (3 components)
	Units in g/s (1g = 9.80665 m/s^2)                    

tBodyAccelerationJerkStdDeviationX            
tBodyAccelerationJerkStdDeviationY             
tBodyAccelerationJerkStdDeviationZ            
	Standard deviation of body jerk measurements (derivative of acceleration) in time domain (3 components)

tBodyGyroMeanX                                 
tBodyGyroMeanY                                
tBodyGyroMeanZ
	Mean of body angular velocity measurements in time domain (3 components)
	Units in rad/s                                

tBodyGyroStdDeviationX                        
tBodyGyroStdDeviationY                         
tBodyGyroStdDeviationZ
	Standard deviation of body angular velocity measurements in time domain (3 components)                        

tBodyGyroJerkMeanX                             
tBodyGyroJerkMeanY                            
tBodyGyroJerkMeanZ     
	Mean of body angular jerk measurements (derivative of angular velocity) in time domain (3 components)
	Units in rad/s^2                         

tBodyGyroJerkStdDeviationX                    
tBodyGyroJerkStdDeviationY                     
tBodyGyroJerkStdDeviationZ
	Standard deviation of body jerk measurements in time domain (3 components)                    

tBodyAccelerationMagnitudeMean
	Mean magnitude of body acceleration vector measurements (calculated using Euclidean norm)
	Units in g (1g = 9.80665 m/s^2)

tBodyAccelerationMagnitudeStdDeviation   
	Standard deviation of Magnitude of body acceleration measurements (magnitude calculated using Euclidean norm)

tGravityAccelerationMagnitudeMean             
	Mean magnitude of gravity acceleration measurements (magnitude calculated using Euclidean norm)

tGravityAccelerationMagnitudeStdDeviation     
	Std deviation of gravity acceleration magnitude measurements (magnitude calculated using Euclidean norm)

tBodyAccelerationJerkMagnitudeMean   
	Mean magnitude of body acceleration jerk measurements (magnitude calculated using Euclidean norm)

tBodyAccelerationJerkMagnitudeStdDeviation  
	Std. Deviation of body acceleration magnitude measurements (magnitude calculated using Euclidean norm)

tBodyGyroMagnitudeMean
	Mean of body angular velocity magnitude measurements (magnitude calculated using Euclidean norm)

tBodyGyroMagnitudeStdDeviation  
	Std. deviation of body angular velocity magnitude measurements (magnitude calculated using Euclidean norm)

tBodyGyroJerkMagnitudeMean       
	Mean magnitude of body angular velocity measurements (magnitude calculated using Euclidean norm)

tBodyGyroJerkMagnitudeStdDeviation
	Std. deviation of body angular velocity magnitude measurements (magnitude calculated using Euclidean norm)

fBodyAccelerationMeanX                         
fBodyAccelerationMeanY                        
fBodyAccelerationMeanZ
	Mean of body acceleration measurements, in frequency domain (3 components)

fBodyAccelerationStdDeviationX                
fBodyAccelerationStdDeviationY                 
fBodyAccelerationStdDeviationZ  
	Std deviation of body acceleration measurements, in frequency domain (3 components)

fBodyAccelerationJerkMeanX                     
fBodyAccelerationJerkMeanY                    
fBodyAccelerationJerkMeanZ     
	Mean of body acceleration jerk measurements, in frequency domain (3 components)

fBodyAccelerationJerkStdDeviationX            
fBodyAccelerationJerkStdDeviationY             
fBodyAccelerationJerkStdDeviationZ
	Std deviation of body acceleration jerk signal, in frequency domain (3 components)

fBodyGyroMeanX                                 
fBodyGyroMeanY                                
fBodyGyroMeanZ                                 
	Mean of body angular velocity signal (3 components)

fBodyGyroStdDeviationX                        
fBodyGyroStdDeviationY                         
fBodyGyroStdDeviationZ
	Std deviation of body angular velocity signal, in frequency domain  (3 components)

fBodyAccelerationMagnitudeMean  
	Mean of frequency domain body acceleration magnitude (magnitude calculated using Euclidean norm)

fBodyAccelerationMagnitudeStdDeviation  
	Std deviation of body acceleration magnitude (3 components, in frequency domain)

fBodyAccelerationJerkMagnitudeMean         
	Mean of body acceleration jerk magnitude signal, in frequency domain

fBodyAccelerationJerkMagnitudeStdDeviation
	std deviation of body acceleration jerk magnitude signal, in frequency domain

fBodyGyroMagnitudeMean            
	Mean of body angular velocity magnitude signal, in frequency domain

fBodyGyroMagnitudeStdDeviation      
	Std. deviation of body angular velocity magnitude signal, in frequency domain

fBodyGyroJerkMagnitudeMean          
	Mean of body angular velocity magnitude, in frequency domain

fBodyGyroJerkMagnitudeStdDeviation 
	Std deviation of body angular velocity jerk magnitude, in frequency domain   

subject     
	Subject identifier (from 1 to 30)

activity
	Description of activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
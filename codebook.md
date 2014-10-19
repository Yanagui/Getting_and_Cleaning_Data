# Getting and Cleaning Data - Project Course - Code Book

## Description of variables, Data and Transformation
This is a code book that describes the variables, the data, and any transformations or work that was performed to clean up the data.

## Variables: Train and Test
For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.

- Triaxial Angular velocity from the gyroscope. 

- A 561-feature vector with time and frequency domain variables. 

- Its activity label. 

- An identifier of the subject who carried out the experiment.

The train and test files represents respectively 70% and 30% of the 30 recorded subjects.

The dataset includes the following files:

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


## Raw Data
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals.

## Transformation:
Create a tidy data set using 8 different files:
- Merge subject, activities and base by type (train and test);
- Use rbind function to join the train and test files, and create a unique data set;
- Use grep function to select and filter only the measurements on the mean and standard deviation for each measurement (mean, meanFreq and std);
- Use gsub function to rename the measurements labels in order to clarify the description for each measurement;
- Use aggregate function to create a tidy and new data set;
- Finally, use write.table function to save this data set as a file.

### Variables of tidy data set:

* "Subject"                                            
* "Activity"                                           
* "Time_Body_Acceration-mean()-X"                      
* "Time_Body_Acceration-mean()-Y"                      
* "Time_Body_Acceration-mean()-Z"                      
* "Time_Body_Acceration-std()-X"                       
* "Time_Body_Acceration-std()-Y"                       
* "Time_Body_Acceration-std()-Z"                       
* "Time_Gravity_Acceration-mean()-X"                   
* "Time_Gravity_Acceration-mean()-Y"                   
* "Time_Gravity_Acceration-mean()-Z"                   
* "Time_Gravity_Acceration-std()-X"                    
* "Time_Gravity_Acceration-std()-Y"                    
* "Time_Gravity_Acceration-std()-Z"                    
* "Time_Body_Acceration_Jerk-mean()-X"                 
* "Time_Body_Acceration_Jerk-mean()-Y"                 
* "Time_Body_Acceration_Jerk-mean()-Z"                 
* "Time_Body_Acceration_Jerk-std()-X"                  
* "Time_Body_Acceration_Jerk-std()-Y"                  
* "Time_Body_Acceration_Jerk-std()-Z"                  
* "Time_Body_Gyroscope-mean()-X"                       
* "Time_Body_Gyroscope-mean()-Y"                       
* "Time_Body_Gyroscope-mean()-Z"                       
* "Time_Body_Gyroscope-std()-X"                        
* "Time_Body_Gyroscope-std()-Y"                        
* "Time_Body_Gyroscope-std()-Z"                        
* "Time_Body_Gyroscope_Jerk-mean()-X"                  
* "Time_Body_Gyroscope_Jerk-mean()-Y"                  
* "Time_Body_Gyroscope_Jerk-mean()-Z"                  
* "Time_Body_Gyroscope_Jerk-std()-X"                   
* "Time_Body_Gyroscope_Jerk-std()-Y"                   
* "Time_Body_Gyroscope_Jerk-std()-Z"                   
* "Time_Body_Acceration_Magnitude-mean()"              
* "Time_Body_Acceration_Magnitude-std()"               
* "Time_Gravity_Acceration_Magnitude-mean()"           
* "Time_Gravity_Acceration_Magnitude-std()"            
* "Time_Body_Acceration_Jerk_Magnitude-mean()"         
* "Time_Body_Acceration_Jerk_Magnitude-std()"          
* "Time_Body_Gyroscope_Magnitude-mean()"               
* "Time_Body_Gyroscope_Magnitude-std()"                
* "Time_Body_Gyroscope_Jerk_Magnitude-mean()"          
* "Time_Body_Gyroscope_Jerk_Magnitude-std()"           
* "Frequency_Body_Acceration-mean()-X"                 
* "Frequency_Body_Acceration-mean()-Y"                 
* "Frequency_Body_Acceration-mean()-Z"                 
* "Frequency_Body_Acceration-std()-X"                  
* "Frequency_Body_Acceration-std()-Y"                  
* "Frequency_Body_Acceration-std()-Z"                  
* "Frequency_Body_Acceration-meanFreq()-X"             
* "Frequency_Body_Acceration-meanFreq()-Y"             
* "Frequency_Body_Acceration-meanFreq()-Z"             
* "Frequency_Body_Acceration_Jerk-mean()-X"            
* "Frequency_Body_Acceration_Jerk-mean()-Y"            
* "Frequency_Body_Acceration_Jerk-mean()-Z"            
* "Frequency_Body_Acceration_Jerk-std()-X"             
* "Frequency_Body_Acceration_Jerk-std()-Y"             
* "Frequency_Body_Acceration_Jerk-std()-Z"             
* "Frequency_Body_Acceration_Jerk-meanFreq()-X"        
* "Frequency_Body_Acceration_Jerk-meanFreq()-Y"        
* "Frequency_Body_Acceration_Jerk-meanFreq()-Z"        
* "Frequency_Body_Gyroscope-mean()-X"                  
* "Frequency_Body_Gyroscope-mean()-Y"                  
* "Frequency_Body_Gyroscope-mean()-Z"                  
* "Frequency_Body_Gyroscope-std()-X"                   
* "Frequency_Body_Gyroscope-std()-Y"                   
* "Frequency_Body_Gyroscope-std()-Z"                   
* "Frequency_Body_Gyroscope-meanFreq()-X"              
* "Frequency_Body_Gyroscope-meanFreq()-Y"              
* "Frequency_Body_Gyroscope-meanFreq()-Z"              
* "Frequency_Body_Acceration_Magnitude-mean()"         
* "Frequency_Body_Acceration_Magnitude-std()"          
* "Frequency_Body_Acceration_Magnitude-meanFreq()"     
* "Frequency_Body_Acceration_Jerk_Magnitude-mean()"    
* "Frequency_Body_Acceration_Jerk_Magnitude-std()"     
* "Frequency_Body_Acceration_Jerk_Magnitude-meanFreq()"
* "Frequency_Body_Gyroscope_Magnitude-mean()"          
* "Frequency_Body_Gyroscope_Magnitude-std()"           
* "Frequency_Body_Gyroscope_Magnitude-meanFreq()"      
* "Frequency_Body_Gyroscope_Jerk_Magnitude-mean()"     
* "Frequency_Body_Gyroscope_Jerk_Magnitude-std()"      
* "Frequency_Body_Gyroscope_Jerk_Magnitude-meanFreq()"

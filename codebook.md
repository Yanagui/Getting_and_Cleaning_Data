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

* "Subject": Int from 1 to 30                                        
* "Activity": Factor 6 levels (LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)                     
* "Time_Body_Acceration-mean()-X": Num from 0.2216 to 0.3015
* "Time_Body_Acceration-mean()-Y": Num from -0.040514 to -0.001308
* "Time_Body_Acceration-mean()-Z": Num from -0.15251 to -0.07538 
* "Time_Body_Acceration-std()-X": Num from -0.9961 to 0.6269
* "Time_Body_Acceration-std()-Y": Num from -0.99024 to 0.61694
* "Time_Body_Acceration-std()-Z": Num from -0.9877 to 0.6090
* "Time_Gravity_Acceration-mean()-X": Num from -0.6800 to 0.9745
* "Time_Gravity_Acceration-mean()-Y": Num from -0.47989 to 0.95659
* "Time_Gravity_Acceration-mean()-Z": Num from -0.49509 to 0.95787
* "Time_Gravity_Acceration-std()-X": Num from -0.9968 to -0.8296
* "Time_Gravity_Acceration-std()-Y": Num from -0.9942 to -0.6436
* "Time_Gravity_Acceration-std()-Z": Num from -0.9910 to -0.6102
* "Time_Body_Acceration_Jerk-mean()-X": Num from 0.04269 to 0.13019
* "Time_Body_Acceration_Jerk-mean()-Y": Num from -0.0386872 to 0.0568186
* "Time_Body_Acceration_Jerk-mean()-Z": Num from -0.067458 to 0.038053
* "Time_Body_Acceration_Jerk-std()-X": Num from -0.9946 to 0.5443
* "Time_Body_Acceration_Jerk-std()-Y": Num from -0.9895 to 0.3553
* "Time_Body_Acceration_Jerk-std()-Z": Num from -0.99329 to 0.03102
* "Time_Body_Gyroscope-mean()-X": Num from -0.20578 to 0.19270
* "Time_Body_Gyroscope-mean()-Y": Num from -0.20421 to 0.02747
* "Time_Body_Gyroscope-mean()-Z": Num from -0.07245 to 0.17910
* "Time_Body_Gyroscope-std()-X": Num from -0.9943 to 0.2677
* "Time_Body_Gyroscope-std()-Y": Num from -0.9942 to 0.4765
* "Time_Body_Gyroscope-std()-Z": Num from -0.9855 to 0.5649
* "Time_Body_Gyroscope_Jerk-mean()-X": Num from -0.15721 to -0.02209
* "Time_Body_Gyroscope_Jerk-mean()-Y": Num from -0.07681 to -0.01320
* "Time_Body_Gyroscope_Jerk-mean()-Z": Num from -0.092500 to -0.006941
* "Time_Body_Gyroscope_Jerk-std()-X": Num from -0.9965 to 0.1791
* "Time_Body_Gyroscope_Jerk-std()-Y": Num from -0.9971 to 0.2959
* "Time_Body_Gyroscope_Jerk-std()-Z": Num from -0.9954 to 0.1932
* "Time_Body_Acceration_Magnitude-mean()": Num from -0.9865 to 0.6446
* "Time_Body_Acceration_Magnitude-std()": Num from -0.9865 to 0.4284
* "Time_Gravity_Acceration_Magnitude-mean()": Num from -0.9865 to 0.6446
* "Time_Gravity_Acceration_Magnitude-std()": Num from -0.9865 to 0.4284
* "Time_Body_Acceration_Jerk_Magnitude-mean()": Num from -0.9928 to 0.4345
* "Time_Body_Acceration_Jerk_Magnitude-std()": Num from -0.9946 to 0.4506
* "Time_Body_Gyroscope_Magnitude-mean()": Num from -0.9807 to 0.4180
* "Time_Body_Gyroscope_Magnitude-std()": Num from -0.9814 to 0.3000
* "Time_Body_Gyroscope_Jerk_Magnitude-mean()": Num from -0.99732 to 0.08758
* "Time_Body_Gyroscope_Jerk_Magnitude-std()": Num from -0.9977 to 0.2502
* "Frequency_Body_Acceration-mean()-X": Num from -0.9952 to 0.5370
* "Frequency_Body_Acceration-mean()-Y": Num from -0.98903 to 0.52419
* "Frequency_Body_Acceration-mean()-Z": Num from -0.9895 to 0.2807
* "Frequency_Body_Acceration-std()-X": Num from -0.9966 to 0.6585
* "Frequency_Body_Acceration-std()-Y": Num from -0.99068 to 0.56019
* "Frequency_Body_Acceration-std()-Z": Num from -0.9872 to 0.6871
* "Frequency_Body_Acceration-meanFreq()-X": Num from -0.63591 to 0.15912
* "Frequency_Body_Acceration-meanFreq()-Y": Num from -0.379518 to 0.466528
* "Frequency_Body_Acceration-meanFreq()-Z": Num from -0.52011 to 0.40253
* "Frequency_Body_Acceration_Jerk-mean()-X": Num from -0.9946 to 0.4743
* "Frequency_Body_Acceration_Jerk-mean()-Y": Num from -0.9894 to 0.2767
* "Frequency_Body_Acceration_Jerk-mean()-Z": Num from -0.9920 to 0.1578
* "Frequency_Body_Acceration_Jerk-std()-X": Num from -0.9951 to 0.4768
* "Frequency_Body_Acceration_Jerk-std()-Y": Num from -0.9905 to 0.3498
* "Frequency_Body_Acceration_Jerk-std()-Z": Num from -0.993108 to -0.006236
* "Frequency_Body_Acceration_Jerk-meanFreq()-X": Num from -0.57604 to 0.33145
* "Frequency_Body_Acceration_Jerk-meanFreq()-Y": Num from -0.60197 to 0.19568
* "Frequency_Body_Acceration_Jerk-meanFreq()-Z": Num from -0.62756 to 0.23011
* "Frequency_Body_Gyroscope-mean()-X": Num from -0.9931 to 0.4750
* "Frequency_Body_Gyroscope-mean()-Y": Num from -0.9940 to 0.3288
* "Frequency_Body_Gyroscope-mean()-Z": Num from -0.9860 to 0.4924
* "Frequency_Body_Gyroscope-std()-X": Num from -0.9947 to 0.1966
* "Frequency_Body_Gyroscope-std()-Y": Num from -0.9944 to 0.6462
* "Frequency_Body_Gyroscope-std()-Z": Num from -0.9867 to 0.5225
* "Frequency_Body_Gyroscope-meanFreq()-X": Num from -0.395770 to 0.249209
* "Frequency_Body_Gyroscope-meanFreq()-Y": Num from -0.66681 to 0.27314
* "Frequency_Body_Gyroscope-meanFreq()-Z": Num from -0.50749 to 0.37707
* "Frequency_Body_Acceration_Magnitude-mean()": Num from -0.9868 to 0.5866
* "Frequency_Body_Acceration_Magnitude-std()": Num from -0.9876 to 0.1787
* "Frequency_Body_Acceration_Magnitude-meanFreq()": Num from -0.31234 to 0.43585
* "Frequency_Body_Acceration_Jerk_Magnitude-mean()": Num from -0.9940 to 0.5384
* "Frequency_Body_Acceration_Jerk_Magnitude-std()": Num from -0.9944 to 0.3163
* "Frequency_Body_Acceration_Jerk_Magnitude-meanFreq()": Num from -0.12521 to 0.48809
* "Frequency_Body_Gyroscope_Magnitude-mean()": Num from -0.9865 to 0.2040
* "Frequency_Body_Gyroscope_Magnitude-std()": Num from -0.9815 to 0.2367
* "Frequency_Body_Gyroscope_Magnitude-meanFreq()": Num from -0.45664 to 0.40952
* "Frequency_Body_Gyroscope_Jerk_Magnitude-mean()": Num from -0.9976 to 0.1466
* "Frequency_Body_Gyroscope_Jerk_Magnitude-std()": Num from -0.9976 to 0.2878
* "Frequency_Body_Gyroscope_Jerk_Magnitude-meanFreq()": Num from -0.18292 to 0.42630


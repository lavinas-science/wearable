---
title: "CodeBook"
author: "Paulo Lavinas"
date: "7/20/2021"
output: pdf_document
---

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- mean(): Mean value
- std(): Standard deviation


All of this variables described above are a mean value of grouped line of activity and subject, then all of variables are listed below:

| Variable | Description |
| ---:     | ---:        |
| activity | Activites names |
| subject | Subjects ID |
| tBodyAcc.mean...X | mean of all tBodyAcc.mean...X |
| tBodyAcc.mean...Y | mean of all tBodyAcc.mean...Y |
| tBodyAcc.mean...Z | mean of all tBodyAcc.mean...Z |
| tBodyAcc.std...X | mean of all tBodyAcc.std...X |
| tBodyAcc.std...Y | mean of all tBodyAcc.std...Y |
| tBodyAcc.std...Z | mean of all tBodyAcc.std...Z |
| tGravityAcc.mean...X | mean of all tGravityAcc.mean...X |
| tGravityAcc.mean...Y | mean of all tGravityAcc.mean...Y |
| tGravityAcc.mean...Z | mean of all tGravityAcc.mean...Z |
| tGravityAcc.std...X | mean of all tGravityAcc.std...X |
| tGravityAcc.std...Y | mean of all tGravityAcc.std...Y |
| tGravityAcc.std...Z | mean of all tGravityAcc.std...Z |
| tBodyAccJerk.mean...X | mean of all tBodyAccJerk.mean...X |
| tBodyAccJerk.mean...Y | mean of all tBodyAccJerk.mean...Y |
| tBodyAccJerk.mean...Z | mean of all tBodyAccJerk.mean...Z |
| tBodyAccJerk.std...X | mean of all tBodyAccJerk.std...X |
| tBodyAccJerk.std...Y | mean of all tBodyAccJerk.std...Y |
| tBodyAccJerk.std...Z | mean of all tBodyAccJerk.std...Z |
| tBodyGyro.mean...X | mean of all tBodyGyro.mean...X |
| tBodyGyro.mean...Y | mean of all tBodyGyro.mean...Y |
| tBodyGyro.mean...Z | mean of all tBodyGyro.mean...Z |
| tBodyGyro.std...X | mean of all tBodyGyro.std...X |
| tBodyGyro.std...Y | mean of all tBodyGyro.std...Y |
| tBodyGyro.std...Z | mean of all tBodyGyro.std...Z |
| tBodyGyroJerk.mean...X | mean of all tBodyGyroJerk.mean...X |
| tBodyGyroJerk.mean...Y | mean of all tBodyGyroJerk.mean...Y |
| tBodyGyroJerk.mean...Z | mean of all tBodyGyroJerk.mean...Z |
| tBodyGyroJerk.std...X | mean of all tBodyGyroJerk.std...X |
| tBodyGyroJerk.std...Y | mean of all tBodyGyroJerk.std...Y |
| tBodyGyroJerk.std...Z | mean of all tBodyGyroJerk.std...Z |
| tBodyAccMag.mean.. | mean of all tBodyAccMag.mean.. |
| tBodyAccMag.std.. | mean of all tBodyAccMag.std.. |
| tGravityAccMag.mean.. | mean of all tGravityAccMag.mean.. |
| tGravityAccMag.std.. | mean of all tGravityAccMag.std.. |
| tBodyAccJerkMag.mean.. | mean of all tBodyAccJerkMag.mean.. |
| tBodyAccJerkMag.std.. | mean of all tBodyAccJerkMag.std.. |
| tBodyGyroMag.mean.. | mean of all tBodyGyroMag.mean.. |
| tBodyGyroMag.std.. | mean of all tBodyGyroMag.std.. |
| tBodyGyroJerkMag.mean.. | mean of all tBodyGyroJerkMag.mean.. |
| tBodyGyroJerkMag.std.. | mean of all tBodyGyroJerkMag.std.. |
| fBodyAcc.mean...X | mean of all fBodyAcc.mean...X |
| fBodyAcc.mean...Y | mean of all fBodyAcc.mean...Y |
| fBodyAcc.mean...Z | mean of all fBodyAcc.mean...Z |
| fBodyAcc.std...X | mean of all fBodyAcc.std...X |
| fBodyAcc.std...Y | mean of all fBodyAcc.std...Y |
| fBodyAcc.std...Z | mean of all fBodyAcc.std...Z |
| fBodyAccJerk.mean...X | mean of all fBodyAccJerk.mean...X |
| fBodyAccJerk.mean...Y | mean of all fBodyAccJerk.mean...Y |
| fBodyAccJerk.mean...Z | mean of all fBodyAccJerk.mean...Z |
| fBodyAccJerk.std...X | mean of all fBodyAccJerk.std...X |
| fBodyAccJerk.std...Y | mean of all fBodyAccJerk.std...Y |
| fBodyAccJerk.std...Z | mean of all fBodyAccJerk.std...Z |
| fBodyGyro.mean...X | mean of all fBodyGyro.mean...X |
| fBodyGyro.mean...Y | mean of all fBodyGyro.mean...Y |
| fBodyGyro.mean...Z | mean of all fBodyGyro.mean...Z |
| fBodyGyro.std...X | mean of all fBodyGyro.std...X |
| fBodyGyro.std...Y | mean of all fBodyGyro.std...Y |
| fBodyGyro.std...Z | mean of all fBodyGyro.std...Z |
| fBodyAccMag.mean.. | mean of all fBodyAccMag.mean.. |
| fBodyAccMag.std.. | mean of all fBodyAccMag.std.. |
| fBodyBodyAccJerkMag.mean.. | mean of all fBodyBodyAccJerkMag.mean.. |
| fBodyBodyAccJerkMag.std.. | mean of all fBodyBodyAccJerkMag.std.. |
| fBodyBodyGyroMag.mean.. | mean of all fBodyBodyGyroMag.mean.. |
| fBodyBodyGyroMag.std.. | mean of all fBodyBodyGyroMag.std.. |
| fBodyBodyGyroJerkMag.mean.. | mean of all fBodyBodyGyroJerkMag.mean.. |
| fBodyBodyGyroJerkMag.std.. | mean of all fBodyBodyGyroJerkMag.std.. |








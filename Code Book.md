# Code Book
This code book provides a list of the variables included in tidy.txt.

Tidy.txt stores a data set showing the average of the measurements on mean and standard deviation from an original data set
collected from the accelerometers of Samsung Galaxy S smartphone.
The full description of the original data can be found at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data used for generating "tidy.txt" can be found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Data fields in tidy.txt:
## Activity: 

Represents the activities performed while wearing a smartphone (Samsung Galaxy S):

'LAYING'     
'SITTING'                    
'STANDING'                   
'WALKING'                    
'WALKING_DOWNSTAIRS'         
'WALKING_UPSTAIRS'     

## Subject: 

Represents the ID of the participants to the experiments concerning human acticity recognition using smartphones.

## Measurements: 

The following fields capture the average of the original measurements of mean and standard deviations.
The original means and standard deviations were further processed to determine the average by activity and by subject.
Additionally, the following mapping from the original data to tidy.txt data set were introduced, when naming measurement variables in tidy.txt:
- mean -> Mean
- std -> STD
- t -> time
- f -> frequency
- Gyro -> Gyroscope
- Acc -> Accelerometer
- BodyBody -> Body
- Mag -> Magnitude.

The resulting data fields in the clean data set stored in tidy.txt are asd follows:

- timeBodyAccelerometerMeanX
- timeBodyAccelerometerMeanY
- timeBodyAccelerometerMeanZ
- timeBodyAccelerometerSTDX
- timeBodyAccelerometerSTDY
- timeBodyAccelerometerSTDZ
- timeGravityAccelerometerMeanX
- timeGravityAccelerometerMeanY
- timeGravityAccelerometerMeanZ
- timeGravityAccelerometerSTDX
- timeGravityAccelerometerSTDY
- timeGravityAccelerometerSTDZ
- timeBodyAccelerometerJerkMeanX
- timeBodyAccelerometerJerkMeanY
- timeBodyAccelerometerJerkMeanZ
- timeBodyAccelerometerJerkSTDX
- timeBodyAccelerometerJerkSTDY
- timeBodyAccelerometerJerkSTDZ
- timeBodyGyroscopeMeanX
- timeBodyGyroscopeMeanY
- timeBodyGyroscopeMeanZ
- timeBodyGyroscopeSTDX
- timeBodyGyroscopeSTDY 
- timeBodyGyroscopeSTDZ 
- timeBodyGyroscopeJerkMeanX 
- timeBodyGyroscopeJerkMeanY 
- timeBodyGyroscopeJerkMeanZ 
- timeBodyGyroscopeJerkSTDX 
- timeBodyGyroscopeJerkSTDY 
- timeBodyGyroscopeJerkSTDZ 
- timeBodyAccelerometerMagnitudeMean 
- timeBodyAccelerometerMagnitudeSTD 
- timeGravityAccelerometerMagnitudeMean 
- timeGravityAccelerometerMagnitudeSTD 
- timeBodyAccelerometerJerkMagnitudeMean 
- timeBodyAccelerometerJerkMagnitudeSTD 
- timeBodyGyroscopeMagnitudeMean
- timeBodyGyroscopeMagnitudeSTD 
- timeBodyGyroscopeJerkMagnitudeMean 
- timeBodyGyroscopeJerkMagnitudeSTD 
- frequencyBodyAccelerometerMeanX 
- frequencyBodyAccelerometerMeanY 
- frequencyBodyAccelerometerMeanZ 
- frequencyBodyAccelerometerSTDX 
- frequencyBodyAccelerometerSTDY 
- frequencyBodyAccelerometerSTDZ 
- frequencyBodyAccelerometerMeanFreqX 
- frequencyBodyAccelerometerMeanFreqY 
- frequencyBodyAccelerometerMeanFreqZ 
- frequencyBodyAccelerometerJerkMeanX 
- frequencyBodyAccelerometerJerkMeanY 
- frequencyBodyAccelerometerJerkMeanZ 
- frequencyBodyAccelerometerJerkSTDX 
- frequencyBodyAccelerometerJerkSTDY 
- frequencyBodyAccelerometerJerkSTDZ 
- frequencyBodyAccelerometerJerkMeanFreqX 
- frequencyBodyAccelerometerJerkMeanFreqY 
- frequencyBodyAccelerometerJerkMeanFreqZ 
- frequencyBodyGyroscopeMeanX 
- frequencyBodyGyroscopeMeanY 
- frequencyBodyGyroscopeMeanZ 
- frequencyBodyGyroscopeSTDX 
- frequencyBodyGyroscopeSTDY 
- frequencyBodyGyroscopeSTDZ 
- frequencyBodyGyroscopeMeanFreqX 
- frequencyBodyGyroscopeMeanFreqY 
- frequencyBodyGyroscopeMeanFreqZ 
- frequencyBodyAccelerometerMagnitudeMean 
- frequencyBodyAccelerometerMagnitudeSTD 
- frequencyBodyAccelerometerMagnitudeMeanFreq 
- frequencyBodyAccelerometerJerkMagnitudeMean 
- frequencyBodyAccelerometerJerkMagnitudeSTD 
- frequencyBodyAccelerometerJerkMagnitudeMeanFreq 
- frequencyBodyGyroscopeMagnitudeMean 
- frequencyBodyGyroscopeMagnitudeSTD 
- frequencyBodyGyroscopeMagnitudeMeanFreq 
- frequencyBodyGyroscopeJerkMagnitudeMean 
- frequencyBodyGyroscopeJerkMagnitudeSTD 
- frequencyBodyGyroscopeJerkMagnitudeMeanFreq

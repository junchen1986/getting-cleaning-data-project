
The raw data and this codebook is based on http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following paper is cited for this work:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

====
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain measurements initialized with "time"

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing measurements initialized with "FFT"

The tidyData.txt include the following variables:

Identifier:
- subject: The test subject ID
- activity: The activity type corresponding to the measurements

Measurements:

- timeBodyAccMeanX 
- timeBodyAccMeanY 
- timeBodyAccMeanZ 
- timeBodyAccStdX 
- timeBodyAccStdY 
- timeBodyAccStdZ 
- timeGravityAccMeanX 
- timeGravityAccMeanY 
- timeGravityAccMeanZ 
- timeGravityAccStdX 
- timeGravityAccStdY 
- timeGravityAccStdZ 
- timeBodyAccJerkMeanX 
- timeBodyAccJerkMeanY 
- timeBodyAccJerkMeanZ 
- timeBodyAccJerkStdX 
- timeBodyAccJerkStdY 
- timeBodyAccJerkStdZ 
- timeBodyGyroMeanX 
- timeBodyGyroMeanY 
- timeBodyGyroMeanZ 
- timeBodyGyroStdX 
- timeBodyGyroStdY 
- timeBodyGyroStdZ 
- timeBodyGyroJerkMeanX 
- timeBodyGyroJerkMeanY 
- timeBodyGyroJerkMeanZ 
- timeBodyGyroJerkStdX 
- timeBodyGyroJerkStdY 
- timeBodyGyroJerkStdZ 
- timeBodyAccMagnitudeMean 
- timeBodyAccMagnitudeStd 
- timeGravityAccMagnitudeMean 
- timeGravityAccMagnitudeStd 
- timeBodyAccJerkMagnitudeMean 
- timeBodyAccJerkMagnitudeStd 
- timeBodyGyroMagnitudeMean 
- timeBodyGyroMagnitudeStd 
- timeBodyGyroJerkMagnitudeMean 
- timeBodyGyroJerkMagnitudeStd 
- FFTBodyAccMeanX 
- FFTBodyAccMeanY 
- FFTBodyAccMeanZ 
- FFTBodyAccStdX 
- FFTBodyAccStdY 
- FFTBodyAccStdZ 
- FFTBodyAccMeanFreqX 
- FFTBodyAccMeanFreqY 
- FFTBodyAccMeanFreqZ 
- FFTBodyAccJerkMeanX 
- FFTBodyAccJerkMeanY 
- FFTBodyAccJerkMeanZ 
- FFTBodyAccJerkStdX 
- FFTBodyAccJerkStdY 
- FFTBodyAccJerkStdZ 
- FFTBodyAccJerkMeanFreqX 
- FFTBodyAccJerkMeanFreqY 
- FFTBodyAccJerkMeanFreqZ 
- FFTBodyGyroMeanX 
- FFTBodyGyroMeanY 
- FFTBodyGyroMeanZ 
- FFTBodyGyroStdX 
- FFTBodyGyroStdY 
- FFTBodyGyroStdZ 
- FFTBodyGyroMeanFreqX 
- FFTBodyGyroMeanFreqY 
- FFTBodyGyroMeanFreqZ 
- FFTBodyAccMagnitudeMean 
- FFTBodyAccMagnitudeStd 
- FFTBodyAccMagnitudeMeanFreq 
- FFTBodyBodyAccJerkMagnitudeMean 
- FFTBodyBodyAccJerkMagnitudeStd 
- FFTBodyBodyAccJerkMagnitudeMeanFreq 
- FFTBodyBodyGyroMagnitudeMean 
- FFTBodyBodyGyroMagnitudeStd 
- FFTBodyBodyGyroMagnitudeMeanFreq 
- FFTBodyBodyGyroJerkMagnitudeMean 
- FFTBodyBodyGyroJerkMagnitudeStd 
- FFTBodyBodyGyroJerkMagnitudeMeanFreq

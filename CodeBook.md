DataCleaningProject
===================

Original Data Set
-----------------

The purpose of this project is to clean and present in a tidy form a data set, produced by the Human Activity Recognition project, that was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted Samsung Galaxy S smartphone with embedded inertial sensors. (More information on the experiment can be found here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones))

The original, raw data set (which itself was randomly partitioned into "test" and "train" subsets)  contained the following variables for each record:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The data are the  sensor signals which were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity.

Finally, all the sensor readings were normalized and bounded within [-1,1].

Tidy Data Set
-------------

The following steps were performed by the "run_analysis.R" script on the raw data set (see the comments in the code for more details):
- The training and test sets were merged into a single data set, resulting in 10,299 records on 563 variables.
- Only the variables with the mean and standard deviation for each measurement were extracted. They were recognized by the presence of "mean()" and "std()" in the column names. No other variables were included that contained some other variation of "mean" in their names, since they were calculated values from the measurements already observed.
- Using the "aggregate" function, the second data set was extracted. This set contains the average of each variable from the step above, for each activity and each subject (i.e. has a row for each subject/activity pair).
- Finally, the activity IDs were converted to activity names and the variable names cleaned up to remove special characters.

The resulting variable (column) names are as follows:
(Note:"XYZ" is used to denote 3-axial signals in the X, Y and Z directions, prefix "t" to denotes time and prefix "f" indicates frequency domain signals)

Subject
Activity
tobacco_mearn_X
tobacco_mean_Y
tBodyAcc_mean_Z
tBodyAcc_std_X
tBodyAcc_std_Y
tBodyAcc_std_Z
tGravityAcc_mean_X
tGravityAcc_mean_Y
tGravityAcc_mean_Z
tGravityAcc_std_X
tGravityAcc_std_Y
tGravityAcc_std_Z
tBodyAccJerk_mean_X
tBodyAccJerk_mean_Y
tBodyAccJerk_mean_Z
tBodyAccJerk_std_X
tBodyAccJerk_std_Y
tBodyAccJerk_std_Z
tBodyGyro_mean_X
tBodyGyro_mean_Y
tBodyGyro_mean_Z
tBodyGyro_std_X
tBodyGyro_std_Y
tBodyGyro_std_Z
tBodyGyroJerk_mean_X
tBodyGyroJerk_mean_Y
tBodyGyroJerk_mean_Z
tBodyGyroJerk_std_X
tBodyGyroJerk_std_Y
tBodyGyroJerk_std_Z
tBodyAccMag_mean
tBodyAccMag_std
tGravityAccMag_mean
tGravityAccMag_std
tBodyAccJerkMag_mean
tBodyAccJerkMag_std
tBodyGyroMag_mean
tBodyGyroMag_std
tBodyGyroJerkMag_mean
tBodyGyroJerkMag_std
fBodyAcc_mean_X
fBodyAcc_mean_Y
fBodyAcc_mean_Z
fBodyAcc_std_X
fBodyAcc_std_Y
fBodyAcc_std_Z
fBodyAccJerk_mean_X
fBodyAccJerk_mean_Y
fBodyAccJerk_mean_Z
fBodyAccJerk_std_X
fBodyAccJerk_std_Y
fBodyAccJerk_std_Z
fBodyGyro_mean_X
fBodyGyro_mean_Y
fBodyGyro_mean_Z
fBodyGyro_std_X
fBodyGyro_std_Y
fBodyGyro_std_Z
fBodyAccMag_mean
fBodyAccMag_std
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std
fBodyBodyGyroMag_mean
fBodyBodyGyroMag_std
fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag_std

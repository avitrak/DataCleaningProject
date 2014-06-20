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

The resulting variable (column) names are as follows:<br />
(Note:"XYZ" is used to denote 3-axial signals in the X, Y and Z directions, prefix "t" to denotes time and prefix "f" indicates frequency domain signals)

Subject<br />
Activity<br />
tobacco_mearn_X<br />
tobacco_mean_Y<br />
tBodyAcc_mean_Z<br />
tBodyAcc_std_X<br />
tBodyAcc_std_Y<br />
tBodyAcc_std_Z<br />
tGravityAcc_mean_X<br />
tGravityAcc_mean_Y<br />
tGravityAcc_mean_Z<br />
tGravityAcc_std_X<br />
tGravityAcc_std_Y<br />
tGravityAcc_std_Z<br />
tBodyAccJerk_mean_X<br />
tBodyAccJerk_mean_Y<br />
tBodyAccJerk_mean_Z<br />
tBodyAccJerk_std_X<br />
tBodyAccJerk_std_Y<br />
tBodyAccJerk_std_Z<br />
tBodyGyro_mean_X<br />
tBodyGyro_mean_Y<br />
tBodyGyro_mean_Z<br />
tBodyGyro_std_X<br />
tBodyGyro_std_Y<br />
tBodyGyro_std_Z<br />
tBodyGyroJerk_mean_X<br />
tBodyGyroJerk_mean_Y<br />
tBodyGyroJerk_mean_Z<br />
tBodyGyroJerk_std_X<br />
tBodyGyroJerk_std_Y<br />
tBodyGyroJerk_std_Z<br />
tBodyAccMag_mean<br />
tBodyAccMag_std<br />
tGravityAccMag_mean<br />
tGravityAccMag_std<br />
tBodyAccJerkMag_mean<br />
tBodyAccJerkMag_std<br />
tBodyGyroMag_mean<br />
tBodyGyroMag_std<br />
tBodyGyroJerkMag_mean<br />
tBodyGyroJerkMag_std<br />
fBodyAcc_mean_X<br />
fBodyAcc_mean_Y<br />
fBodyAcc_mean_Z<br />
fBodyAcc_std_X<br />
fBodyAcc_std_Y<br />
fBodyAcc_std_Z<br />
fBodyAccJerk_mean_X<br />
fBodyAccJerk_mean_Y<br />
fBodyAccJerk_mean_Z<br />
fBodyAccJerk_std_X<br />
fBodyAccJerk_std_Y<br />
fBodyAccJerk_std_Z<br />
fBodyGyro_mean_X<br />
fBodyGyro_mean_Y<br />
fBodyGyro_mean_Z<br />
fBodyGyro_std_X<br />
fBodyGyro_std_Y<br />
fBodyGyro_std_Z<br />
fBodyAccMag_mean<br />
fBodyAccMag_std<br />
fBodyBodyAccJerkMag_mean<br />
fBodyBodyAccJerkMag_std<br />
fBodyBodyGyroMag_mean<br />
fBodyBodyGyroMag_std<br />
fBodyBodyGyroJerkMag_mean<br />
fBodyBodyGyroJerkMag_std

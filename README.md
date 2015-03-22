# Getting and Cleaning Data Course Project

## The run_analysis.R script

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script run_analysis.R in this repo does the following. 

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive variable names. 
* From the data set in above step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Code Book for the tidy data set
The tidy data set created by R script run_analysis.R contains the following variables:

subject Numeric Subject ID  Range: 1-30

activity  Numeric Activity Name Code: 1=WALKING; 2=WALKING_UPSTAIRS; 3=WALKING_DOWNSTAIRS; 4=SITTING; 5=STANDING; 6=LAYING

tBodyAcc-mean()-X  Numeric	Average of tBodyAcc-mean()-X
tBodyAcc-mean()-Y	Numeric	Average of tBodyAcc-mean()-Y
tBodyAcc-mean()-Z	Numeric	Average of tBodyAcc-mean()-Z
tBodyAcc-std()-X	Numeric	Average of tBodyAcc-std()-X
tBodyAcc-std()-Y	Numeric	Average of tBodyAcc-std()-Y
tBodyAcc-std()-Z	Numeric	Average of tBodyAcc-std()-Z
tGravityAcc-mean()-X	Numeric	Average of tGravityAcc-mean()-X
tGravityAcc-mean()-Y	Numeric	Average of tGravityAcc-mean()-Y
tGravityAcc-mean()-Z	Numeric	Average of tGravityAcc-mean()-Z
tGravityAcc-std()-X	Numeric	Average of tGravityAcc-std()-X
tGravityAcc-std()-Y	Numeric	Average of tGravityAcc-std()-Y
tGravityAcc-std()-Z	Numeric	Average of tGravityAcc-std()-Z
tBodyAccJerk-mean()-X	Numeric	Average of tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y	Numeric	Average of tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z	Numeric	Average of tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X	Numeric	Average of tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y	Numeric	Average of tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z	Numeric	Average of tBodyAccJerk-std()-Z
tBodyGyro-mean()-X	Numeric	Average of tBodyGyro-mean()-X
tBodyGyro-mean()-Y	Numeric	Average of tBodyGyro-mean()-Y
tBodyGyro-mean()-Z	Numeric	Average of tBodyGyro-mean()-Z
tBodyGyro-std()-X	Numeric	Average of tBodyGyro-std()-X
tBodyGyro-std()-Y	Numeric	Average of tBodyGyro-std()-Y
tBodyGyro-std()-Z	Numeric	Average of tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X	Numeric	Average of tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y	Numeric	Average of tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z	Numeric	Average of tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X	Numeric	Average of tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y	Numeric	Average of tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z	Numeric	Average of tBodyGyroJerk-std()-Z
tBodyAccMag-mean()	Numeric	Average of tBodyAccMag-mean()
tBodyAccMag-std()	Numeric	Average of tBodyAccMag-std()
tGravityAccMag-mean()	Numeric	Average of tGravityAccMag-mean()
tGravityAccMag-std()	Numeric	Average of tGravityAccMag-std()
tBodyAccJerkMag-mean()	Numeric	Average of tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()	Numeric	Average of tBodyAccJerkMag-std()
tBodyGyroMag-mean()	Numeric	Average of tBodyGyroMag-mean()
tBodyGyroMag-std()	Numeric	Average of tBodyGyroMag-std()
tBodyGyroJerkMag-mean()	Numeric	Average of tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()	Numeric	Average of tBodyGyroJerkMag-std()
fBodyAcc-mean()-X	Numeric	Average of fBodyAcc-mean()-X
fBodyAcc-mean()-Y	Numeric	Average of fBodyAcc-mean()-Y
fBodyAcc-mean()-Z	Numeric	Average of fBodyAcc-mean()-Z
fBodyAcc-std()-X	Numeric	Average of fBodyAcc-std()-X
fBodyAcc-std()-Y	Numeric	Average of fBodyAcc-std()-Y
fBodyAcc-std()-Z	Numeric	Average of fBodyAcc-std()-Z
fBodyAccJerk-mean()-X	Numeric	Average of fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y	Numeric	Average of fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z	Numeric	Average of fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X	Numeric	Average of fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y	Numeric	Average of fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z	Numeric	Average of fBodyAccJerk-std()-Z
fBodyGyro-mean()-X	Numeric	Average of fBodyGyro-mean()-X
fBodyGyro-mean()-Y	Numeric	Average of fBodyGyro-mean()-Y
fBodyGyro-mean()-Z	Numeric	Average of fBodyGyro-mean()-Z
fBodyGyro-std()-X	Numeric	Average of fBodyGyro-std()-X
fBodyGyro-std()-Y	Numeric	Average of fBodyGyro-std()-Y
fBodyGyro-std()-Z	Numeric	Average of fBodyGyro-std()-Z
fBodyAccMag-mean()	Numeric	Average of fBodyAccMag-mean()
fBodyAccMag-std()	Numeric	Average of fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()	Numeric	Average of fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()	Numeric	Average of fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()	Numeric	Average of fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()	Numeric	Average of fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()	Numeric	Average of fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()	Numeric	Average of fBodyBodyGyroJerkMag-std()

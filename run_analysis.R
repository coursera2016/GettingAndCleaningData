## read in the training and testing data
subject.train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
X.train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
y.train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)

subject.test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
X.test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
y.test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)

## Merges the training and the test sets to create one data set
dat.train <- cbind(subject.train, y.train, X.train)
dat.test <- cbind(subject.test, y.test, X.test)
dat <- rbind(dat.train, dat.test)
colnames(dat)[1:2] <- c("subject", "activity")

## Extracts only the measurements on the mean and standard deviation for each 
## measurement
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE, as.is=TRUE)
features.extract <- features[sapply(strsplit(features[,2], '-'), "[", 2) %in% c('mean()', 'std()'),]
dat <- dat[,c(1,2,(features.extract[,1]+2))]

## Uses descriptive activity names to name the activities in the data set
activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)
dat[,"activity"] <- factor(dat$activity, levels=1:6, labels=activity.labels[,2])

## Appropriately labels the data set with descriptive variable names\
colnames(dat)[-(1:2)] <- features.extract[,2]

## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject
dat.tidy <- as.data.frame(t(sapply(split(dat, interaction(dat$subject, dat$activity)), colMeans)))
dat.tidy[,"activity"] <- factor(dat.tidy$activity, levels=1:6, labels=activity.labels[,2])
write.table(dat.tidy, "tidy_data.txt", row.name=FALSE)



## The data files are contained in the "Dataset" folder in the working directory

x_test <- read.table("Dataset/test/X_test.txt", header=F, sep="", comment.char="", colClasses="numeric")

# read in the 561 column labels and assign them to the names of the columns of x_test dataframe

features <- read.table("Dataset/features.txt", header=F, sep="", comment.char = "", colClasses="character")

names(x_test) <- as.vector(features[,2])

# repeat the above steps for subject_test.txt and y_test.txt files, using col.names argument to assign column names

subject_test <- read.table("Dataset/test/subject_test.txt", header=F, sep="", comment.char="", colClasses="numeric", col.names = c("subjectID"))

y_test <- read.table("Dataset/test/y_test.txt", header=F, sep="", comment.char="", colClasses="numeric", col.names = c("activityID"))

# combine columns of subject_test, y_test and x_test into a singe data frame

testDF <- cbind(subject_test, y_test, x_test)

# repeat the steps above to create a single data frame with the training data sets

x_train <- read.table("Dataset/train/X_train.txt", header=F, sep="", comment.char="", colClasses="numeric")

names(x_train) <- as.vector(features[,2])

subject_train <- read.table("Dataset/train/subject_train.txt", header=F, sep="", comment.char="", colClasses="numeric", col.names = c("subjectID"))

y_train <- read.table("Dataset/train/y_train.txt", header=F, sep="", comment.char="", colClasses="numeric", col.names = c("activityID"))

trainDF <- cbind(subject_train, y_train, x_train)

DF <- rbind(testDF, trainDF) # ok to use rbind since # and names of the columns match

# generate a logical vector based on the presence of "mean()" and "std()" in the column names of DF

select_cols <- grepl('mean\\(\\)|std\\(\\)|subjectID|activityID', names(DF))

# use the logical vector above to select the columns whose names contain "mean()" and "std()" (plus the first two columns of DF)

DF2 <- DF[,select_cols]

# convert activityID to factor and set descriptive labels

DF2$activityID <- factor(DF2$activityID, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

# use "aggregate" fucntion to calculate the mean of each measurement for each subject/activity pair. The resulting dataframe will have a row for each subject/activity pair

DF_tidy <- aggregate(DF2[,c(-1,-2)], by = list(DF2$subjectID, DF2$activityID), mean)

### replace special characters in column names with "gsub" and rename the first two columns

names(DF_tidy) <- gsub("\\(\\)", "", names(DF_tidy))

names(DF_tidy) <- gsub("-", "_", names(DF_tidy))

names(DF_tidy)[1:2] <- c("Subject", "Activity")

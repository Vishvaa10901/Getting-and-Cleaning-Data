# Loading 'dplyr' package (after installation)
library(dplyr)

# Set working directory to corresponding R project folder.

# Download the zip file from the source
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "UCI HAR Dataset.zip", method="curl")

# Unzip the file to current working directory.
unzip("UCI HAR Data.zip")

# Note : If file is not unzipped to currrent working directory 
# then set the working directory to the folder in which the file is unzipped.


# Loading training and testing data set in the console

# training data
train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("UCI HAR Dataset/train/y_train.txt")

# testing data
test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")

# Reading features variable
featureName <- read.table("UCI HAR Dataset/features.txt")

# Activity labels :
activityName <- read.table("UCI HAR Dataset/activity_labels.txt")

# Subject test / train tables :
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")

# Assigning Column names to variables :

colnames(featureName) <- c("No.", "features")

colnames(activityName) <- c("activityNum", "activity")

colnames(train_x) <- featureName$features
colnames(test_x) <- featureName$features

colnames(train_y) <- "activityNum"
colnames(test_y) <- "activityNum"

colnames(subjectTrain) <- "subjectNum"
colnames(subjectTest) <- "subjectNum"

# Merging the train and test dataset :
x_merged <- rbind(train_x, test_x)
y_merged <- rbind(train_y, test_y)
subject_merged <- rbind(subjectTrain, subjectTest)
MergeAll <- cbind(subject_merged, x_merged, y_merged)
 
# Extracting only the measurements on the mean and standard deviation for each measurement
tidyData <- MergeAll %>% select(subjectNum, activityNum, contains("mean"), contains("std"))

# Using activity names to the name the activity in the Tidy dataset
tidyData$activityNum <- activityName[tidyData$activityNum, 2]

# Labeling the data set with descriptibe variable names
names(tidyData) = gsub('*-mean', 'Mean', names(tidyData))
names(tidyData) = gsub('-std', 'Std', names(tidyData))
names(tidyData) = gsub('Acc', 'Accelerometer', names(tidyData))
names(tidyData) = gsub('Gyro', 'Gyroscope', names(tidyData))
names(tidyData) = gsub('Mag', 'Magnitude', names(tidyData))
names(tidyData) = gsub('-freq()', 'Frequency', names(tidyData))

#Creating a second, independent tidy data set with the average of each variable for each activity and each subject.
FinalTidyData <- tidyData %>%
    group_by(subjectNum, activityNum) %>%
    summarise_all(funs(mean))


# Writing table to the 'FinalTidyData.txt' file
write.table(FinalTidyData, "FinalTidyData.txt")






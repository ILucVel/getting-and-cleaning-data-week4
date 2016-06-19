library(reshape2)
library(knitr)

#download data to folder "get_data_w4"
if(!file.exists("./get_data_w4")) {dir.create("get_data_w4")}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./get_data_w4/Dataset.zip", method = "curl")

# unizp file
unzip(zipfile = "./get_data_w4/Dataset.zip", exdir = "get_data_w4")

# list files
files <- list.files(path = "./UCI HAR Dataset", recursive = TRUE)
files

# read Activity files: train and test
dataActivitytest <- read.table(file.path("/Users/ioanavelcescu/Desktop/get_data_w4/UCI HAR Dataset", "test", "y_test.txt"), header = FALSE)
dataActivitytrain <- read.table(file.path("/Users/ioanavelcescu/Desktop/get_data_w4/UCI HAR Dataset", "train", "y_train.txt"), header = FALSE)
activitylabels <- read.table(file.path("/Users/ioanavelcescu/Desktop/get_data_w4/UCI HAR Dataset", "activity_labels.txt"), header = FALSE)
names(activitylabels) <- c("ID", "Activity")

# read Subject files: train and test
dataSubjecttest <- read.table(file.path("/Users/ioanavelcescu/Desktop/get_data_w4/UCI HAR Dataset", "test", "subject_test.txt"), header = FALSE)
dataSubjecttrain <- read.table(file.path("/Users/ioanavelcescu/Desktop/get_data_w4/UCI HAR Dataset", "train", "subject_train.txt"), header = FALSE)

# read Features files: train and test
dataFTest <- read.table(file.path("/Users/ioanavelcescu/Desktop/get_data_w4/UCI HAR Dataset", "test", "X_test.txt"), header = FALSE)
dataFTrain <- read.table(file.path("/Users/ioanavelcescu/Desktop/get_data_w4/UCI HAR Dataset", "train", "X_train.txt"), header = FALSE)
Flabels <- read.table(file.path("/Users/ioanavelcescu/Desktop/get_data_w4/UCI HAR Dataset", "features.txt"), header = FALSE)

# Merge training and test sets
dataActivity <- rbind(dataActivitytrain, dataActivitytest)
dataSubject <- rbind(dataSubjecttrain, dataSubjecttest)
dataF <- rbind(dataFTrain, dataFTest)

# add variable names
names(dataActivity) <- c("Activity")
names(dataSubject) <- c("Subject")
names(dataF) <- Flabels[,2]

# extract dataset containing only mean and std
toMatch <- c("mean()", "std()")
index <- grep(paste(toMatch, collapse = "|"), names(dataF), value = TRUE)
dataFselect <- dataF[index]

# merge activity, subject and features
allData <- cbind(dataSubject, dataActivity, dataFselect)

# add descriptive activity names
allData <- merge(x=activitylabels, y=allData, by.x="ID", by.y="Activity")
allData <- allData[ ,-1]

# add descriptive variables names
names(allData) <- gsub("-mean", "Mean", names(allData))
names(allData) <- gsub("-std", "STD", names(allData))
names(allData) <- gsub("^t", "time", names(allData))
names(allData) <- gsub("^f", "frequency", names(allData))
names(allData) <- gsub("Gyro", "Gyroscope", names(allData))
names(allData) <- gsub("Acc", "Accelerometer", names(allData))
names(allData) <- gsub("Mag", "Magnitude", names(allData))
names(allData) <- gsub("BodyBody", "Body", names(allData))
names(allData) <- gsub("[-()]", "", names(allData))
str(allData)

# create independent tidy dataset with average of each variable by activity by subject
allData.melt <- melt(allData, id = c("Activity", "Subject"))
allData.mean <- dcast(allData.melt, Activity + Subject ~ variable, mean)
write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)



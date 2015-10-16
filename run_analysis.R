library(reshape2)

filename <- "getdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
    URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(URL, filename)
}  
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}

# Load dataset
train <- read.table("UCI HAR Dataset/train/X_train.txt")
trainSub <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainAct <- read.table("UCI HAR Dataset/train/Y_train.txt")

test <- read.table("UCI HAR Dataset/test/X_test.txt")
testSub <- read.table("UCI HAR Dataset/test/subject_test.txt")
testAct <- read.table("UCI HAR Dataset/test/Y_test.txt")

# Extract only the data on mean and standard deviation
actLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
actLabels[,2] <- as.character(actLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

featuresX <- grep(".*mean.*|.*std.*", features[,2])
featuresXName <- features[featuresX,2]
featuresXName <- gsub('-mean', 'Mean', featuresXName)
featuresXName <- gsub('-std', 'Std', featuresXName)
featuresXName <- gsub('[-()]', '', featuresXName)
featuresXName <- gsub('Mag', 'Magnitude', featuresXName)
featuresXName <- gsub('^t', 'time', featuresXName)
featuresXName <- gsub('^f', 'FFT', featuresXName)

train <- cbind(trainSub, trainAct, train[featuresX])
test <- cbind(testSub, testAct, test[featuresX])

# merge datasets and revise the labels
data <- rbind(train, test)
colnames(data) <- c("subject", "activity", featuresXName)

# write to file
data$activity <- factor(data$activity, levels = actLabels[,1], labels = actLabels[,2])
data$subject <- as.factor(data$subject)

data.melted <- melt(data, id = c("subject", "activity"))
data.mean <- dcast(data.melted, subject + activity ~ variable, mean)

write.table(data.mean, "tidyData.txt", row.names = FALSE, quote = FALSE)
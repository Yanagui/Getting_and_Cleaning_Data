## Script:
## You should create one R script called run_analysis.R that does the following. 
## 1. LOAD THE BASES ************************************************
## 1.1 - Activity descriptions
act_lbl <- read.table("./UCI HAR Dataset/activity_labels.txt", sep="")
names(act_lbl) <- c("Act_Key", "Activity")

## 1.2 - Code of activities for test and train bases
act_train <- read.table("./UCI HAR Dataset/train/y_train.txt", sep="")
act_test <- read.table("./UCI HAR Dataset/test/y_test.txt", sep="")
names(act_train) <- "Act_Key"
names(act_test) <- "Act_Key"

## 1.3 - Subjects
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep="")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep="")
names(subject_train) <- "Subject"
names(subject_test) <- "Subject"

## 1.4 - Feature names
data_lbl <- read.table("./UCI HAR Dataset/features.txt", sep="")
data_lbl[,1] <- paste("V",data_lbl[,1], sep="")

## 1.5 - Datasets
base_train <- read.table("./UCI HAR Dataset/train/X_train.txt", sep="")
base_test <- read.table("./UCI HAR Dataset/test/X_test.txt", sep="")


## 2. MERGES BASES ************************************************
## 2.1 - Subject, Activity and Base
base_train <- cbind(subject_train, act_train, base_train)
base_test <- cbind(subject_test, act_test, base_test)

base_train <- merge(base_train, act_lbl, by.x ="Act_Key", by.y = "Act_Key", sort = F)
base_test<- merge(base_test, act_lbl, by.x ="Act_Key", by.y = "Act_Key", sort = F)
rm(subject_train, act_train, subject_test, act_test, act_lbl)

## 3. PROJECT'S TOPICS *********************************************
## 3.1 - Merges the training and the test sets to create one data set.
database <- rbind(base_train, base_test)
rm(base_train, base_test)

## 3.2 - Extracts only the measurements on the mean and standard 
##   deviation for each measurement. 
lblFilter <- grep("mean|std", data_lbl[,2])
filter <- c("Subject", "Activity", data_lbl[lblFilter,1])
database <- database[ , filter]

## 3.3 - Uses descriptive activity names to name the activities in the data set
lblFilter2 <- grepl("mean|std", data_lbl[,2])
dtbnames <- c("Subject", "Activity", as.vector(data_lbl[lblFilter2, 2]))
names(database) <- dtbnames
rm(data_lbl)

## 3.4 - Appropriately labels the data set with descriptive variable names. 
vec <- as.vector(names(database))
vec <- gsub("^t", "Time_", vec)
vec <- gsub("^f", "Frequency_", vec)
vec <- gsub("Acc", "_Acceration", vec)
vec <- gsub("Gyro", "_Gyroscope", vec)
vec <- gsub("Mag", "_Magnitude", vec)
vec <- gsub("Jerk", "_Jerk", vec)
vec <- gsub("BodyBody", "Body", vec)
names(database) <- vec

## 3.5 - From the data set in step 4, creates a second, 
##   independent tidy data set with the average of each variable 
##   for each activity and each subject.
tidydatabase <- aggregate(database[,-c(1,2)], 
        by = list(Subject = database[,1], Activity = database[,2]),
        FUN = mean)

write.table(tidydatabase,file="tidydatabase.txt",row.names=FALSE)

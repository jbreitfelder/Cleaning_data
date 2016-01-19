library(dplyr)
setwd("~/R_codes/UCI_HAR_Dataset/")
#----------------------------------------------------

# Set paths :
test_path <- file.path("test", grep(".txt", list.files("test"), value=TRUE))
train_path <- file.path("train", grep(".txt", list.files("train"), value=TRUE))

# Read the labels of the activities :
labels <- read.table("activity_labels.txt", stringsAsFactors=TRUE)
names(labels) <- c("id", "activity")
labels <- mutate(labels, id=as.factor(id))

# Read features names :
features <- read.table("features.txt")[, 2]

# Merge the training and the test datasets :
subject <- rbind(read.table(test_path[1]), read.table(train_path[1]))
results <- rbind(read.table(test_path[2]), read.table(train_path[2]))
activity <- rbind(read.table(test_path[3]), read.table(train_path[3]))

# Extract the mean() and std() measurements : 
index <- grep("mean()|std()", as.character(features))
results <- select(results, index)

# Create a new global dataset : 
Data <- data.frame(as.factor(subject$V1), as.factor(activity$V1), results)

# Label the data set with descriptive variable names :
features <- features[index]
features <- gsub("-mean()", "_mean", features, fixed=TRUE)
features <- gsub("-std()", "_std", features, fixed=TRUE)
features <- gsub("-meanFreq()", "_meanfreq", features, fixed=TRUE)
features <- gsub("-", ".", features, fixed=TRUE)
features <- gsub("Body", ".body", features, fixed=TRUE)
features <- gsub("Gravity", ".gravity", features, fixed=TRUE)
features <- gsub("Acc", ".acceleration", features, fixed=TRUE)
features <- gsub("Jerk", ".jerk", features, fixed=TRUE)
features <- gsub("Gyro", ".gyroscope", features, fixed=TRUE)
features <- gsub("Mag", ".mag", features, fixed=TRUE)
features <- gsub("t.", "time_", features, fixed=TRUE)
features <- gsub("f.", "freq_", features, fixed=TRUE)
features <- gsub("body.body.", "body.", features, fixed=TRUE)
names(Data) <- c("subject", "id", features) 

# Name the activities in the data set :
Data <- merge(labels, Data, all=TRUE)  # /!\ This will sort the dataset
Data <- select(Data, -(id))

# Create another tidy data set with the average of each variable
# for each activity and each subject.
New <- group_by(Data, activity, subject) 
New <- summarise_each(New, funs(mean))

# Write the table in a file
write.table(New, file='tidy_dataset.txt', row.name=FALSE)

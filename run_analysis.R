library("magrittr")
library("dplyr")
library("tidyr")

# Read the data in from txt files
features <- read.table("./UCI HAR Dataset/features.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt") %>%
    setNames(features$V2)
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt") %>%
    setNames(features$V2)
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")


# Merge the training and the test sets to create one data set
train <- cbind(subject_train, y_train, x_train)
test <- cbind(subject_test, y_test, x_test)
df <- rbind(train, test)

# Extract only the measurements on the mean and standard deviation for each
# measurement
colnames(df)[1:2] <- c("Subject", "Activity")
valid_names <- make.names(names = names(df), unique = TRUE, allow_ = TRUE)
names(df) <- valid_names
df <- select(df, matches("^Subject$|^Activity$|mean()|std()"))

# Use descriptive activity names to name the activities in the data set
df$Activity <- gsub("1", activity_labels[1, 2], df$Activity)
df$Activity <- gsub("2", activity_labels[2, 2], df$Activity)
df$Activity <- gsub("3", activity_labels[3, 2], df$Activity)
df$Activity <- gsub("4", activity_labels[4, 2], df$Activity)
df$Activity <- gsub("5", activity_labels[5, 2], df$Activity)
df$Activity <- gsub("6", activity_labels[6, 2], df$Activity)

# Appropriately label the data set with descriptive variable names
nameVector <- gsub("\\.mean", " Mean", names(df))
nameVector <- gsub("\\.std", " Std Dev", nameVector)
nameVector <- gsub("\\.\\.\\.X", " on Phone X Axis", nameVector)
nameVector <- gsub("\\.\\.\\.Y", " on Phone Y Axis", nameVector)
nameVector <- gsub("\\.\\.\\.Z", " on Phone Z Axis", nameVector)
nameVector <- gsub(" +$", "", nameVector)
nameVector <- gsub("\\.+$", "", nameVector)
nameVector <- gsub("BodyAcc", "Body Acceleration ", nameVector)
nameVector <- gsub("BodyGyro", "Body Gyro ", nameVector)
nameVector <- gsub("GravityAcc", "Gravity Acceleration ", nameVector)
nameVector <- gsub("^t", "Time ", nameVector)
nameVector <- gsub("^f", "FFT ", nameVector)
nameVector <- gsub("Mag", " Maginitude", nameVector)
nameVector <- gsub("Jerk", " Jerk", nameVector)
nameVector <- gsub("Freq", " Frequency", nameVector)
nameVector <- gsub("angle.", "Angle ", nameVector)
nameVector <- gsub("tBody", "Time Body", nameVector)
nameVector <- gsub("gravity", "Gravity ", nameVector)
nameVector <- gsub("X\\.", " on Phone X Axis ", nameVector)
nameVector <- gsub("Y\\.", " on Phone Y Axis ", nameVector)
nameVector <- gsub("Z\\.", " on Phone Z Axis ", nameVector)
nameVector <- gsub("\\.+", " ", nameVector)
nameVector <- gsub("JerkMean", "Jerk Mean", nameVector)
nameVector <- gsub("  ", " ", nameVector)
names(df) <- nameVector

# Create a second, independent tidy data set with the average of each variable 
# for each activity and each subject
united.df <- unite(data = df, col = "Key", Subject, Activity, sep = "_")
united.df$Key <- as.factor(united.df$Key)
grouped.df <- group_by(united.df, Key)
means <- summarize_each(grouped.df, funs(mean))
write.table(means, file = "means.txt", row.name = FALSE)
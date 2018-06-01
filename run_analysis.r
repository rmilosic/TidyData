library(dplyr)

# Load all datasets
subject_test <- read.table("test/subject_test.txt", sep="")
subject_train <- read.table("train/subject_train.txt", sep="")
features <- read.table("text files/features.txt", sep="")
features <- features[,2]
features <- lapply(features, as.character)
x_test <- read.table("test/x_test.txt", sep="")
y_test <- read.table("test/y_test.txt", sep="")
x_train <- read.table("train/x_train.txt", sep="")
y_train <- read.table("train/y_train.txt", sep="")
names(x_train) <- features
names(x_test) <- features
names(y_train) <- "act_class"
names(y_test) <- "act_class"
names(subject_test) <- "subject"
names(subject_train) <- "subject"
activities <- read.table("text files/activity_labels.txt", sep="")
names(activities) <- c("act_class", "act_label")

# Merge datasets w/ class labels (activities)

x_test <- cbind(x_test, y_test, subject_test)
x_train <- cbind(x_train, y_train, subject_train)

# Comine test and train datasets

merged_dataset <- rbind(x_test, x_train)

# select only columns with mean or std measurments
merged_dataset <- merged_dataset[,grep("(mean|std|act_class|subject)", names(merged_dataset))]

# left join activity labels W/ merged dataset
merged_dataset <- left_join(merged_dataset, activities, by="act_class") %>% select(-act_class)

# group by activity and subject
grouped_dataset <- merged_dataset %>% group_by(act_label, subject)

# summarise all columns by mean
summarised_dataset <- grouped_dataset %>% summarise_all(mean)

# tidy names

names(summarised_dataset) <- gsub("-|[()]|_", names(summarised_dataset), replacement = "")

# write the table
write.table(summarised_dataset,file = "result.txt", sep=" ", row.names = FALSE)
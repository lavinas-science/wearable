# 1 - download data in ./data
# 2 - input ./data/features.txt to features object
features_X <- read.table('./data/features.txt')
# 3 - input ./data/train/X_train.txt, y_train.txt and subject_train.txt to dataframe objects
train_X <- read.table('./data/train/X_train.txt', header=FALSE, col.names = features_X[, 'V2'])
train_y <- read.table('./data/train/y_train.txt', header=FALSE, col.names = c('activity_id'))
train_subject <-  read.table('./data/train/subject_train.txt', header=FALSE, col.names = c('subject'))
# 4 - input ./data/test/X_test.txt, y_test.txt and subject_test.txt to dataframe objects
test_X <- read.table('./data/test/X_test.txt', header=FALSE, col.names = features_X[, 'V2'])
test_y <- read.table('./data/test/y_test.txt', header=FALSE, col.names = c('activity_id'))
test_subject <-  read.table('./data/test/subject_test.txt', header=FALSE, col.names = c('subject'))
# 5 - Merges the training and the test sets to create one data set
X = rbind(train_X, test_X)
y = rbind(train_y, test_y)
subject <- rbind(train_subject, test_subject)
tidy <-cbind(X, y, subject)
# 6 - remove train e test objects
rm(train_X)
rm(train_y)
rm(test_X)
rm(test_y)
rm(train_subject)
rm(test_subject)
rm(y)
rm(X)
rm(subject)
rm(features_X)
# 7 - Extracts only the measurements on the mean and standard deviation for each measurement. 
cols <- grep("mean[.]|std[.]|activity_id|subject", names(tidy))
tidy <- tidy[, cols]
rm(cols)
# 8 - Uses descriptive activity names to name the activities in the data set
activity_names <- read.table('./data/activity_labels.txt', col.names = c('activity_id', 'activity'))
tidy <- merge(tidy, activity_names, by='activity_id')
tidy <- subset(tidy, select = -c(activity_id))
rm(activity_names)
# 9 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
tidy <- group_by(tidy, activity, subject)
tidy_2 <- summarize_all(tidy, .funs = mean)
write.table(tidy_2, './result/tidy_2.txt')





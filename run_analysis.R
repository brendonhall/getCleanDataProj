#Getting and Cleaning Data Class Project

list.of.packages <- c("dplyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
library(dplyr)

#specify the activity labels
activity_labels = c('WALKING', 'WALKING_UPSTAIRS', 'WALKING_DOWNSTAIRS', 'SITTING', 'STANDING', 'LAYING_DOWN');
#specify the index of the measurements we want to keep (means and std dev.)
data_index <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201,202,214,215,227,228,240,241,253,254,266:271,345:350,424:429,503,504,516,517,529,530,542,543);

#read in the feature names
features <- read.table('features.txt', comment.char="",  nrows=600, colClasses=c('integer', 'character'));

#read in the training data
training_data <- read.table('train/X_train.txt', comment.char="", col.names=features[,2], nrows=7352,row.names=NULL);
#extract the columns of interest
training_data <- training_data[,data_index];

#get the subject value and include as a data column
subjects <- read.table('train/subject_train.txt');
training_data$subject <- subjects[,];
#get the activity and include it as a data column
activity <- read.table('train/y_train.txt');
training_data$activity <- activity[,];

#now get the test data
test_data <- read.table('test/X_test.txt', comment.char="", col.names=features[,2], nrows=7352,row.names=NULL);
test_data <- test_data[,data_index];
subjects <- read.table('test/subject_test.txt');
test_data$subject <- subjects[,];
activity <- read.table('test/y_test.txt');
test_data$activity <- activity[,];

#merge the two
all_data = rbind(training_data, test_data);

#replace the activity code with the activity description
all_data$activity <- activity_labels[all_data$activity];

#give the columns readable names
headers <- names(all_data);
headers <- gsub('.mean', 'Mean', headers);
headers <- gsub('.std', 'StdDeviation', headers)
headers <- gsub('Acc', 'Acceleration', headers)
#remove the 3 dots before the axis name
headers <- gsub('...X', 'X', headers)
headers <- gsub('...Y', 'Y', headers)
headers <- gsub('...Z', 'Z', headers)
#remove the trailing '..' characters from some column names
headers2 <- gsub('[..]', '', headers)

names(all_data) <-headers;
#group the data by subject and activity
by_subject <- all_data %>% group_by(subject, activity);
#take the mean by these groups
means_grouped <- by_subject %>% summarise_each(funs(mean(., na.rm=TRUE)));

write.table(means_grouped, 'project.txt', row.name=FALSE);
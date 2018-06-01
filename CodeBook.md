#CodeBook

##Data Source

Original data is in folders "train", "test" and "text files".

Folder "train" contains 3 files.
- subject_train : id of subjects performing training experiments 
- X_train: dataset of timely measurments from sensor, calculated to features
- Y_train: id of activity during individual measurments

Folder "test" contains 3 files.
- subject_test : id of subjects performing test experiments 
- X_test: dataset of timely measurments from sensor, calculated to features
- Y_test: id of activity during individual measurments

Folder "text files" contains 2 files.
- activity_labes: connects activity id and it's label
- features: list of features corresponding to individual columns in X_test and Y_test datasets

## Transformed dataset

The transformed dataset "result.txt" lies in the root folder.

1) We merged datasets from training and test experiments.
2) We gave the merged dataset descriptive column names according to features. 
3) We joined subject id's with each of the measurments.
4) We joined the activity label to each measurment in the dataset.
5) We grouped the dataset according to activity and subject
6) We summarised the mean of data in each column for each group of activity and subject.

##Variables in transformed dataset

actlabel - label of activity 
subject - id of subject

Following variables in the transformed dataset are mean values for each subject and activity. 

tBodyAccmeanX
tBodyAccmeanY
tBodyAccmeanZ
tBodyAccstdX
tBodyAccstdY
tBodyAccstdZ
tGravityAccmeanX
tGravityAccmeanY
tGravityAccmeanZ
tGravityAccstdX
tGravityAccstdY
tGravityAccstdZ
tBodyAccJerkmeanX
tBodyAccJerkmeanY
tBodyAccJerkmeanZ
tBodyAccJerkstdX
tBodyAccJerkstdY
tBodyAccJerkstdZ
tBodyGyromeanX
tBodyGyromeanY
tBodyGyromeanZ
tBodyGyrostdX
tBodyGyrostdY
tBodyGyrostdZ
tBodyGyroJerkmeanX
tBodyGyroJerkmeanY
tBodyGyroJerkmeanZ
tBodyGyroJerkstdX
tBodyGyroJerkstdY
tBodyGyroJerkstdZ
tBodyAccMagmean
tBodyAccMagstd
tGravityAccMagmean
tGravityAccMagstd
tBodyAccJerkMagmean
tBodyAccJerkMagstd
tBodyGyroMagmean
tBodyGyroMagstd
tBodyGyroJerkMagmean
tBodyGyroJerkMagstd
fBodyAccmeanX
fBodyAccmeanY
fBodyAccmeanZ
fBodyAccstdX
fBodyAccstdY
fBodyAccstdZ
fBodyAccmeanFreqX
fBodyAccmeanFreqY
fBodyAccmeanFreqZ
fBodyAccJerkmeanX
fBodyAccJerkmeanY
fBodyAccJerkmeanZ
fBodyAccJerkstdX
fBodyAccJerkstdY
fBodyAccJerkstdZ
fBodyAccJerkmeanFreqX
fBodyAccJerkmeanFreqY
fBodyAccJerkmeanFreqZ
fBodyGyromeanX
fBodyGyromeanY
fBodyGyromeanZ
fBodyGyrostdX
fBodyGyrostdY
fBodyGyrostdZ
fBodyGyromeanFreqX
fBodyGyromeanFreqY
fBodyGyromeanFreqZ
fBodyAccMagmean
fBodyAccMagstd
fBodyAccMagmeanFreq
fBodyBodyAccJerkMagmean
fBodyBodyAccJerkMagstd
fBodyBodyAccJerkMagmeanFreq
fBodyBodyGyroMagmean
fBodyBodyGyroMagstd
fBodyBodyGyroMagmeanFreq
fBodyBodyGyroJerkMagmean
fBodyBodyGyroJerkMagstd
fBodyBodyGyroJerkMagmeanFreq


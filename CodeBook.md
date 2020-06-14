# Code book for the final tidy dataset

Downloaded the row dataset zip file and unziped it as the name `UCI HAR Dataset` in the current working directory.

### Variable Description :

1. The loaded text is stored in following variables :
     * `train_x` data.frame of `train/X_train.txt` 
     * `train_y` data.frame of `train/y_train.txt`
     * `test_x` data.frame of `test/X_test.txt`
     * `test_y` data.frame of `test/y_test.txt`
     * `featureName` from `features.txt`
     * `activityName` from `activity_labels.txt`
     * `subjectTrain` from `subject_train.txt`
     * `subjectTest` from `subject_test.txt`

2. The merged dataset variables are :
     * `x_merged` merged from `train_x` and `test_x` using `rbind()` function
     * `y_merged` merged from `train_y` and `test_y` using `rbind()` function
     * `subject_merged` merged from `subjectTrain` and `subjectTest` using `rbind()` function
     * `MergeAll` merged from `x_merged`, `y_merged` and `subject_merged` using `cbind()` function

3. 

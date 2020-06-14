# Getting and Cleaning Data project details - -


**Purpose :** To demonstrate your ability to collect, work with, and clean a data set. 

**Goal :** To prepare tidy data that can be used for later analysis. 

**Submitted work :** 
1. A tidy data set
2. A link to a Github repository with your script for performing the analysis
3. A code book that describes the variables, the data, and any transformations or work that were performed to clean up the data called CodeBook.md. 4. README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

**Project Overview :** 

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[Human Activity recognition using smartphones (Description) ](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project:

[Provided Row Dataset for the project](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


---------------------------------------------------------------------------------


## Description of the `run_analysis.R` script :

     
The code used to get and clean the row dataset and create a new tidy dataset is included in this script. below is the description for the code:
 
1. Downloading the dataset in the current working directory.
2. Unziping the zip file to extract all the txt files .
3. Loading `dplyr` package from library. (Install it if necessary) 
4. Loading the training and testing dataset in the console
     * Reading testing and training tables
     * Reading features Vector
     * Reading activity labels
5. Assigning DESCRIPTIVE column names to the testing, training, and feature variable names. 
6. Merging the train and test dataset to create one dataset.
7. Extracting only the measurements on the mean and standard deviation for each measurement.
8. Using activity names to the name the activity in the Tidy dataset
9. Labeling the data set with descriptibe variable names
10. Creating a second, independent tidy data set with the average of each variable for each activity and each subject.






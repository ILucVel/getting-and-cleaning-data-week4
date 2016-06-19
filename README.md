# getting-and-cleaning-data-week4
solution to assignment from Getting and cleaning data, week 4, Data science specialisation, created by Johns Hopkins University, and delivered on Coursera


# run_analysis.R
This R script produces a clean data set, stored in file tidy.txt, in the following way:

1. Download the original data set to a specified directory; create directory if it does not exist, in the working directory
2. Read necessary data
3. Merge training and test data sets
4. Name variables
5. Extract the features that contain mean and standard deviation data
6. Merge the data that contains the activity, subject and features
7. Add activity labels (descriptive names for variable "activity")
8. Change names of feature variables, to get to descriptive names
9. Calculate the average of each feature variable, by activity and by subject
10. Write clean data set to disk


# Data set input to run_analysis.R
The following files from the original data set are inputs used in run_analysis.R:

1. Activity files: "y_test.txt", "y_train.txt", and "activity_labels.txt"
2. Subject files: "subject_test.txt", and "subject_train.txt"
3. Features files: "X_test.txt", "X_train_txt", "features.txt"

# Process
1. Each of the input files mentioned above are initially loaded in data frames (one data frame for each input file).
2. Subsequently, the test and train data are combined by rows, resulting and three intermediary data frames:
one for activity data, one for subject data, and one for features data. 
Variable names are added to the data frames.
3. The data frame containing features data (dataF) is subset to return only data containing mean and standard deviation.
4. Data frames are merged, resulting in one consolidated data set (allData).
5. Activity labels are picked-up, by joining the consolidated data frame, and the activitylabels data frame
(each initially contains the activity ID)
6. Variables names of features are changed, in order to make these more descriptive.
7. Call functions melt and dcast (reshape2 library), to compute the mean of features variables, by activity and by subject
8. The result file "tidy.txt" is written to disk

# Result
The resulting clean data set is stored in tidy.txt: 
The data set has one columm for each variable (wide form), no duplicate columns, 
one row for each observation, and headings appropriately describing the variables.



, there are no (the variables are in different columns), has one column

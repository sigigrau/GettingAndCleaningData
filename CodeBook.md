Codebook for the Getting and cleaning data course project
===================

This document contains the transformations performed with the original data set and the list of variables returned by the run_analysis method.

### Files from the original data set:

These are the original files used to obtain the tidy data set:

* UCI HAR Dataset/features.txt: variable names
* UCI HAR Dataset/train/X_train.txt: train data set
* UCI HAR Dataset/train/subject_train.txt: subjects of the train data set
* UCI HAR Dataset/train/y_train.txt: activities of the train data set
* UCI HAR Dataset/test/X_test.txt: test data set
* UCI HAR Dataset/test/subject_test.txt: subjects of the test data set
* UCI HAR Dataset/test/y_test.txt: activities of the test data set
* UCI HAR Dataset/activity_labels.txt: activity labels

### Transformations performed:

* Obtaining of the variable names from the UCI HAR Dataset/features.txt file.
* Cleaning of the variable names (removing of "-()," characters and conversion to lowercase).
* Obtaining of the train data set with the variable names from the UCI HAR Dataset/train/X_train.txt file.
* Obtaining of the train subjects from the UCI HAR Dataset/train/subject_train.txt file.
* Obtaining of the train activities from the UCI HAR Dataset/train/y_train.txt file.
* Binding of the train subjects and activities to the train dataset
* Obtaining of the test dataset with the variable names from the UCI HAR Dataset/test/X_test.txt file.
* Obtaining of the test subjects from the UCI HAR Dataset/test/subject_test.txt file.
* Obtain the test activities from the UCI HAR Dataset/test/y_test.txt file.
* Binding of the test subjects and activities to the test dataset
* Combining of the train and test measurements
* Extraction the subject, the activity, and all mean and std measurements 
* Obtaining of the average of each variable for each activity and each subject.
* Obtaining of the activity labels from the UCI HAR Dataset/activity_labels.txt file.
* Merging of the activity labels
* Ordering of the columns of the resulting data set

### List of variables returned by the run_analysis method:

subject:

* Vector of integers.
* Range of values: from 1 to 30.
* It represents the list of volunteers that participated in the experiment. 

activity: 

* Vector of factors.
* Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* It represents the activities that the volunteers performed.

Rest of variables:

* List of 86 numeric vectors.
* Each value represents the average of a measurement obtained by a volunteer performing an activity. For each activity there are 86 different measurements enregistered by an accelerometer and a gyroscope.
* Example of the format of the labels: tbodyaccmeanx: mean value of the x axis of the body acceleration.
* List of variables: tbodyaccmeanx, tbodyaccmeany, tbodyaccmeanz, tbodyaccstdx, tbodyaccstdy, tbodyaccstdz, tgravityaccmeanx, tgravityaccmeany, tgravityaccmeanz, tgravityaccstdx, tgravityaccstdy, tgravityaccstdz, tbodyaccjerkmeanx, tbodyaccjerkmeany, tbodyaccjerkmeanz, tbodyaccjerkstdx, tbodyaccjerkstdy, tbodyaccjerkstdz, tbodygyromeanx, tbodygyromeany, tbodygyromeanz, tbodygyrostdx, tbodygyrostdy, tbodygyrostdz, tbodygyrojerkmeanx, tbodygyrojerkmeany, tbodygyrojerkmeanz, tbodygyrojerkstdx, tbodygyrojerkstdy, tbodygyrojerkstdz, tbodyaccmagmean, tbodyaccmagstd, tgravityaccmagmean, tgravityaccmagstd, tbodyaccjerkmagmean, tbodyaccjerkmagstd, tbodygyromagmean, tbodygyromagstd, tbodygyrojerkmagmean, tbodygyrojerkmagstd
fbodyaccmeanx, fbodyaccmeany, fbodyaccmeanz, fbodyaccstdx, fbodyaccstdy, fbodyaccstdz, fbodyaccmeanfreqx, fbodyaccmeanfreqy, fbodyaccmeanfreqz, fbodyaccjerkmeanx, fbodyaccjerkmeany, fbodyaccjerkmeanz, fbodyaccjerkstdx, fbodyaccjerkstdy, fbodyaccjerkstdz, fbodyaccjerkmeanfreqx, fbodyaccjerkmeanfreqy, fbodyaccjerkmeanfreqz, fbodygyromeanx, fbodygyromeany, fbodygyromeanz, fbodygyrostdx, fbodygyrostdy, fbodygyrostdz, fbodygyromeanfreqx, fbodygyromeanfreqy, fbodygyromeanfreqz, fbodyaccmagmean, fbodyaccmagstd, fbodyaccmagmeanfreq, fbodybodyaccjerkmagmean, fbodybodyaccjerkmagstd, fbodybodyaccjerkmagmeanfreq, fbodybodygyromagmean, fbodybodygyromagstd, fbodybodygyromagmeanfreq, fbodybodygyrojerkmagmean, fbodybodygyrojerkmagstd, fbodybodygyrojerkmagmeanfreq, angletbodyaccmeangravity, angletbodyaccjerkmeangravitymean, angletbodygyromeangravitymean, angletbodygyrojerkmeangravitymean, anglexgravitymean, angleygravitymean, anglezgravitymean

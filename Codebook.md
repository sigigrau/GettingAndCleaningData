Codebook for the Getting and cleaning data course project
===================

This is the list of variables returned by the run_analysis method:

### List of variables

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
* List of variables: tbodyaccmeanx, tbodyaccmeany, tbodyaccmeanz, tbodyaccstdx, tbodyaccstdy, tbodyaccstdz, tgravityaccmeanx, tgravityaccmeany, tgravityaccmeanz, tgravityaccstdx, tgravityaccstdy, tgravityaccstdz, tbodyaccjerkmeanx, tbodyaccjerkmeany, tbodyaccjerkmeanz, tbodyaccjerkstdx, tbodyaccjerkstdy, tbodyaccjerkstdz, tbodygyromeanx, tbodygyromeany, tbodygyromeanz, tbodygyrostdx, tbodygyrostdy, tbodygyrostdz, tbodygyrojerkmeanx, tbodygyrojerkmeany, tbodygyrojerkmeanz, tbodygyrojerkstdx, tbodygyrojerkstdy, tbodygyrojerkstdz, tbodyaccmagmean, tbodyaccmagstd, tgravityaccmagmean, tgravityaccmagstd, tbodyaccjerkmagmean, tbodyaccjerkmagstd, tbodygyromagmean, tbodygyromagstd, tbodygyrojerkmagmean, tbodygyrojerkmagstd
fbodyaccmeanx, fbodyaccmeany, fbodyaccmeanz, fbodyaccstdx, fbodyaccstdy, fbodyaccstdz, fbodyaccmeanfreqx, fbodyaccmeanfreqy, fbodyaccmeanfreqz, fbodyaccjerkmeanx, fbodyaccjerkmeany, fbodyaccjerkmeanz, fbodyaccjerkstdx, fbodyaccjerkstdy, fbodyaccjerkstdz, fbodyaccjerkmeanfreqx, fbodyaccjerkmeanfreqy, fbodyaccjerkmeanfreqz, fbodygyromeanx, fbodygyromeany, fbodygyromeanz, fbodygyrostdx, fbodygyrostdy, fbodygyrostdz, fbodygyromeanfreqx, fbodygyromeanfreqy, fbodygyromeanfreqz, fbodyaccmagmean, fbodyaccmagstd, fbodyaccmagmeanfreq, fbodybodyaccjerkmagmean, fbodybodyaccjerkmagstd, fbodybodyaccjerkmagmeanfreq, fbodybodygyromagmean, fbodybodygyromagstd, fbodybodygyromagmeanfreq, fbodybodygyrojerkmagmean, fbodybodygyrojerkmagstd, fbodybodygyrojerkmagmeanfreq, angletbodyaccmeangravity, angletbodyaccjerkmeangravitymean, angletbodygyromeangravitymean, angletbodygyrojerkmeangravitymean, anglexgravitymean, angleygravitymean, anglezgravitymean


run_analysis <- function(){
        
        #Obtain the variable names
        variableNames <- read.table("UCI HAR Dataset/features.txt")$V2
        
        #Clean the variable names (remove "-()," characters and convert to lowercase)
        variableNames <- tolower(gsub("[-,\\(\\)\\;]", "", variableNames))
        
        #Obtain the train dataset with the variable names 
        train <- read.table(
                "UCI HAR Dataset/train/X_train.txt", 
                col.names=variableNames)
        
        #Obtain the train subjects
        trainSubjects <- read.table(
                "UCI HAR Dataset/train/subject_train.txt", 
                col.names=c("subject"))
        
        #Obtain the train activities
        trainActivities <- read.table(
                "UCI HAR Dataset/train/y_train.txt", 
                col.names=c("activityid"))
        
        #Bind the train subjects and activities to the train dataset
        train <- cbind(trainSubjects, activityid=trainActivities$activityid, train)

        #Obtain the test dataset with the variable names
        test <- read.table(
                "UCI HAR Dataset/test/X_test.txt", 
                col.names=variableNames)
        
        #Obtain the test subjects
        testSubjects <- read.table(
                "UCI HAR Dataset/test/subject_test.txt", 
                col.names=c("subject"))
        
        #Obtain the test activities
        testActivities <- read.table(
                "UCI HAR Dataset/test/y_test.txt", 
                col.names=c("activityid"))
        
        #Bind the test subjects and activities to the test dataset
        test <- cbind(testSubjects, activityid=testActivities$activityid, test)
        
        #Combine train and test measurements
        combinedData <- rbind(train, test)
        
        #Extract the subject, the activity, and all mean and std measurements 
        combinedDataMeanStd <- combinedData[,grep("subject|activity|mean|std", names(combinedData))]
        
        #Obtain the average of each variable for each activity and each subject.
        average <- aggregate(
                combinedDataMeanStd[,-c(1,2)], 
                by=list(
                        subject=combinedDataMeanStd$subject, 
                        activityid=combinedDataMeanStd$activityid), 
                FUN=mean, 
                na.rm=TRUE)
        
        #Obtain the activity labels
        activityLabels <- read.table(
                "UCI HAR Dataset/activity_labels.txt", 
                col.names=c("id", "activity"))
        
        #Merge the activity labels
        result <- merge(
                average, 
                activityLabels, 
                by.x="activityid", 
                by.y="id")
                
        #Order the columns
        result <- data.frame(
                subject=result$subject, 
                activity=result$activity, 
                result[,3:88])
        
        result
}
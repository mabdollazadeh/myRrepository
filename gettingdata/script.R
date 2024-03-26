#merge
traindf <- read.table("D:/DS/Project/gettingdata/UCI HAR Dataset/train/X_train.txt")
dim(traindf)
library(data.table)
testdf <- read.table("D:/DS/Project/gettingdata/UCI HAR Dataset/test/X_test.txt")
traindt <- data.table(traindf)
testdt <- data.table(testdf)
names(testdt)
testtraindt <- rbind(traindt,testdt)
dim(testtraindt)
trainLables <- fread("D:/DS/Project/gettingdata/UCI HAR Dataset/train/y_train.txt")
testLables <- fread("D:/DS/Project/gettingdata/UCI HAR Dataset/test/y_test.txt")
testtrainLables <- rbind(trainLables,testLables)
dim(testtrainLables)
trainSubjects <- fread("D:/DS/Project/gettingdata/UCI HAR Dataset/train/subject_train.txt")
testSubjects <- fread("D:/DS/Project/gettingdata/UCI HAR Dataset/test/subject_test.txt")
testtrainSubjects <- rbind(trainSubjects,testSubjects)
dim(testtrainSubjects)
dim(testtrainLables)
sublabledata <- cbind(testtrainSubjects,testtrainLables)
sublabledata <- cbind(sublabledata,testtraindt)
dim(sublabledata)
#extract
features <- fread("D:/DS/Project/gettingdata/UCI HAR Dataset/features.txt")
setnames(features,names(features),c("featureNumber","featureName"))
features <- features[grepl("mean|std",features$featureName)]
names(sublabledata)
colnames(sublabledata)[1] <- "subjectid"
colnames(sublabledata)[2] <- "activitylable"
selectcols <- features[,featureNumber]
colsdf <- data.frame(selectcols)
colsdf$selectcols=paste0("V",colsdf$selectcols)
head(colsdf,n=10)
dim(sublabledata)
str(colsdf)
chcols <- as.character(colsdf[,1])
length(chcols)
chcols <- c("subjectid","activitylable",chcols)
length(chcols)
head(chcols)
res <- sublabledata[,..chcols]
dim(res)
str(res)
#descriptive act names
actlablesdf <- read.table("D:/DS/Project/gettingdata/UCI HAR Dataset/activity_labels.txt")
res[,activitylable:=actlablesdf[activitylable,2]]
#descriptive label dataset



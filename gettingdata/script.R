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
features <- fread("D:/DS/Project/gettingdata/UCI HAR Dataset/features.txt")
grep("(.*)mean|(.*)std",features)
length(features)
features
dim(features)
features[1,1]
grep("(.*)mean|(.*)std",features[,2])
featurnames <- features[,2]
featurenames
head(featurnames)
grep("(.*)mean|(.*)std",featurenames)
grep("(.*)mean|(.*)std",featurnames)
grep("mean|std",featurnames)
found <- grep("mean|std",featurnames)
found
dim(featurnames)
featurename[1]
featurnames[1]
found <- grep("mean|std",featurnames[,1])
length(found)
found <- grep("mean|std",featurnames[])
length(found)
tables()
splitnames <- strsplit(featurnames,"()")
splitnames <- strsplit(featurnames,"\(\)")
subnames <- gsub("-","",featurnames)
dim(subnames)
length(subnames)
subnames
setnames(featurnames,names(featurnames),"featureName")
grep("mean|std",featurnames$featureName)
setnames(featurnames,names(features),c("featureNumber,"featureName"))
setnames(featurnames,names(features),c("featureNumber","featureName"))
names(features)
setnames(features,names(features),c("featureNumber","featureName"))
features <- features[grepl("mean|std",featurnames$featureName)]
dim(features)
extrdt <- sublabledata[,features[,2]]
dim(extrdt)
features[,2]
features[,1]
extrdt <- sublabledata[,features[,1]]
dim(extrdt)
extrdt <- subset(sublabledata,,features[,1])
extrdt <- subset(sublabledata,,features[,1],with=T)
extrdt <- subset(sublabledata,,features[,1])
dim(extrdt)
dim(features)
features[10,]




testx <- read.table("/Users/praza/documents/UCI HAR Dataset/test/X_test.txt", header = FALSE)
testy <- read.table("/Users/praza/documents/UCI HAR Dataset/test/y_test.txt", header = FALSE)
testsub <- read.table("/Users/praza/documents/UCI HAR Dataset/test/subject_test.txt", header = FALSE)

trainx <- read.table("/Users/praza/documents/UCI HAR Dataset/train/X_train.txt", header = FALSE)
trainy <- read.table("/Users/praza/documents/UCI HAR Dataset/train/y_train.txt", header = FALSE)
trainsub <- read.table("/Users/praza/documents/UCI HAR Dataset/train/subject_train.txt", header = FALSE)

table1 <- rbind(testx,trainx)
Activity <- rbind(testy,trainy)
Subject <- rbind(testsub,trainsub)
table2 <- cbind(Activity,Subject)

table2$V1[table2$V1 == 1] <- "WALKING"
table2$V1[table2$V1 == 2] <- "WALKING_UPSTAIRS"
table2$V1[table2$V1 == 3] <- "WALKING_DOWNSTAIRS"
table2$V1[table2$V1 == 4] <- "SITTING"
table2$V1[table2$V1 == 5] <- "STANDING"
table2$V1[table2$V1 == 6] <- "LAYING"

rowmean <- rowMeans(table1, na.rm = TRUE)
rowstd <- apply(table1,1,sd) 
output1 <- data.frame(rowmean,rowstd)

Tidy <- cbind(table2,output1)

write.table(Tidy, "/Users/praza/documents/UCI HAR Dataset/Tidy.txt", row.names=FALSE)



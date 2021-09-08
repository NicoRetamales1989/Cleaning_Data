setwd("....all together") #add all files on one folder named "all together" #


library(dplyr)#load dplyr package

# add file names where a pattern can be found to apply a loop function
temp <- c(list.files(pattern="^X"),list.files(pattern="^body"), list.files(pattern="^total"))
#Create a data frame 
Data_clean <- data.frame(matrix( , nrow = 10299, ncol = 22))

#Bind rows for variable subject and "y"  and add them on data frame. 
Data_clean[,1] <- rbind(read.table("subject_train.txt", col.names = "subject"), 
                                read.table("subject_test.txt", col.names = "subject"))
names(Data_clean)[1] <- "subject"
Data_clean[,2] <- rbind(read.table("y_train.txt", col.names = "y"), 
                                read.table("y_test.txt", col.names = "y"))
names(Data_clean)[2] <- "y"

#start loop function for the rest of variables
interval <- seq(1,20, by = 2)
sapply(interval, function(i){
#loop variables
j = i + 1
l = i + 2
n = i + 3
#identify and create names of variables
name_temp <- temp[i]
name_mean <- paste(
                sub("_test.txt", "",name_temp )
                                ,"mean", sep = "_")
name_sd <- paste(
                        sub("_test.txt", "",name_temp )
                                        ,"sd", sep = "_")

#calculate mean and bind rows of same variable
mean_tr <- data.frame(rowMeans(read.table(temp[i])))
names(mean_tr)[1] <- name_mean
mean_test <-  data.frame(rowMeans(read.table(temp[j])))
names(mean_test)[1] <- name_mean
Data_clean[,l] <<- rbind(mean_tr, mean_test) 
names(Data_clean)[l] <<- name_mean


#calculate standard deviation and bind rows of same variable
sd_tr <- data.frame(apply(read.table(temp[i]),1, sd, na.rm = TRUE))
names(sd_tr)[1] <- name_sd
sd_test <- data.frame(apply(read.table(temp[j]),1, sd, na.rm = TRUE))
names(sd_test)[1] <- name_sd
Data_clean[,n] <<- rbind(sd_tr,sd_test)
names(Data_clean)[n] <<- name_sd

})

#analysis to identify average of each variable for each activity and each subject.
Data_analisys <- data.frame(matrix( , nrow = 180, ncol = 22))
l <- 0
#loop function to subset groups by subject and activity 
sapply(1:30, function(i){
        group_subject <- filter(Data_clean, subject == i)
        sapply(1:6, function(j){
                l <<- l +1 
                Data_analisys[l,] <<- colMeans(filter(group_subject, y == j))
        })
})
#loop function to change columns names
sapply(1:22, function(p){
        names(Data_analisys)[p] <<- names(Data_clean)[p]
})        








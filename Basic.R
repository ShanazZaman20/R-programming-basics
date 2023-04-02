# create dataset
x<-c(23,32,45)
y<-c(1,2,3) # create vectors x,y,z on R console
z<-c("z","w","c")
data1<-data.frame(x,y,z) #combine them in a table
data1 # Type data name for output

# Basic functions
min(data1$x) #use $ after data set name to use specific columns
max(data1$y)
mean(data1$y)
unique(data1$z)
length(data1$x)

#Deriving and Removing Variables
#Add new variables using mathematical operators
data1$sum <- data1$x+data1$y
data1

#Delete an unwanted column from your table by using the following method
data1$x <- NULL
data1

#Export updated table
write.csv(data1,file.choose())

#Display all previous commands
history()

#Display last 25 commands
history(max.show=25)

#Save your command history to a file. Default is ".Rhistory“
savehistory(file="myfile")

#Myfile is saved in My Documents
#Recall your command history. Default is ".Rhistory”
loadhistory(file="myfile")

#Import .csv Data File
basic_salary<-read.table("C:/Users/Dell/Documents/R/BASIC_SALARY.csv", 	
                         header=TRUE, sep=",")

#Check your data
head(basic_salary)
tail(basic_salary, n=5)
dim(basic_salary)
str(basic_salary)
names(basic_salary)
summary(basic_salary)


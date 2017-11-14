setwd("/home/sebi/Studium/Master/Semester_1/R/")
mytable <- read.table("bio_data_forest.csv", 
         header=TRUE,
         sep=" ")
head(mytable)
summary(mytable)
plot(mytable)



X <- matrix(c(4,5,6,7,8,9), nrow=3)
X
X[2,2]
X[,2]


numbers_1 <- rnorm(80, mean=0, sd=1)
numbers_1
mat_1 <- matrix(numbers_1, nrow =20)
mat_1

df_1 <- data.frame(mat_1)
names(df_1) <- c("Var1","Var2","Var3","Var3")
df_1
head(df_1)
df_1$Var1
df_1$Var1[1:5]
summary(df_1)

mat_2 <- matrix(numbers_1, ncol =20)

df_2 <- data.frame(mat_2)
rownames(df_2) <- c("a","b","c","d")
names(df_2) <- seq(20,119, by = 5)
df_2[length(df_2)]
length(df_2)
ext <- dim.data.frame(df_2)
df_2[ext[1],]

X <- seq(1,100,by=2.5)
X2 <- numeric(length(X))
X2
X[X<10|X>30]

X2 <- numeric(length(X))
X2[X<=30] <- 1
X2[(X>30)&(X<70)] <- 2
X2[X>=70] <- 3
X2

install.packages("car")
library(car)
X2 <- recode(X, "0:30=1;30:70=2;else=3")

df <- data.frame(plot="location_name_1" , measure1=runif(100)*1000000, measure2=round(runif(100)*100),
                 value=rnorm(100,2,1), ID=rep(LETTERS,100))
df_2 <- data.frame(plot="location_name_2" , measure1=runif(50)*100000, measure2=round(runif(50)*10),
                 value=rnorm(50), ID=rep(LETTERS,50))
df_new <- rbind(df,df_2)

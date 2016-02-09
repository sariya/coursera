# - Sanjeev Sariya
# date 31 Jan 2016
#- basic and random commands, while leanring on the video
x <-5
x
print(x)
msg<-"hello"
msg
print(msg)
x <- 1:20
x
x[1:2]

t <- vector ("numeric",length=10)
t
x<- c(0.5,0.46)
y <-c("A",TRUE)
y
class(y)
as.logical(y)
x<- list(1,"a",TRUE,3+4i)
x
m<- matrix(1:6,nrow=3, ncol=4)
m
dim(m)
attributes(m)

g<-3:50
g
h<- 3:10
h
cbind(g,h)
x<-factor(c("yes","no","no","no"))
x
unclass(x)


x<-factor(c("yes","no","no","no"), levels = c("yes","no") )
x
x<- c(1,2,4,NA)
x
is.na(x)
is.nan(x)


x<- c(1,2,4,NaN,NA)

is.na(x)
is.nan(x)
x<-data.frame(foo=1:4,bar=c(T,F,T,F))
x
ncol(x)
# ------------ naming attributes
x<-1:3
x
names(x)
names(x)<-c("foo","bar","norf")

#------ naming for matrix

m<-matrix(1:4,ncol=2,nrow = 2)
m
dimnames(m)<-list(c("a","b"),c("c","d"))
m

#---- Reading data in R

#-- subsetting
x<-c ("a","b","c","d","a")
x
x[2]
x[x>"a"]


u <-x > "a" # -- logical index
u
x[u] 
#- subsetting list

x<-list(foo=1:4,bar=0.6)
x
x[1]
x$bar
x$foo
x[c(1)] # - get only one or defined values
#-- subsetting matrix
m<-matrix(1:6,2,3)
m
m[,2]

m[1,2]
#3--- partial matching

x<-list(aardvark=1:5) #-- this adds names/attributes to x vector
x
x$a
# --- removing NA

x<-c(1,2,3,NA,4,NA)
is.na(x)
x[!is.na(x)] # bad <-is.na(x) -- logocal vectro


## --- vectorized operations:

x<-1:4
y<-6:9
x
y
x+y
x>2
x*y
x/y
x==y
x==8
x-y 
## -- for matriced
y<-matrix(rep(10,4),2,2) # -- repeat 10 4 times
y

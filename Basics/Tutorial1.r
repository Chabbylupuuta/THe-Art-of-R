
#Simple arithmetic and variable
x = 5
y <- x+3
mynumber = 5
z <- y + mynumber

a <- 10^3 + (2*60/8)-3
b <- (5^3 * (6-2))/61 - 3+4
c <- (2^2+1) -4 + (64^(-2^2.25-1/4) ) 
d <- (0.44 * (1-0.44^0.5))/ 34



#Math modes

exp(x=3)
log(x=243,base=3)


#VECTORS

myvec1 <- c(1,2,3,4,5)
myvec2 <- c(6,7,8,9,10)
myvec3 <- c(myvec1,myvec2)


# SEQUENCES,REPUTITIONS,SORTING AND LENGTH
3:7
seq(from=3, to=27, by=3)

seq(from=3, to= 27,length.out=1.5)

rep(x=1, times=3)

rep(x=c(1,2,3),times=2,each=2)

#SORTING 
 sort(x=c(2.5,-1,-10,3.44),decreasing=FALSE)

 sort(x=c(2.5,-1,-10,3.44),decreasing=TRUE)

foo <- seq(from=4.3,to=5.5,length.out=8)

 bar <- sort(x=foo,decreasing=TRUE)

sort(x=c(foo,bar),decreasing=FALSE)

#Finding a Vector Length with length

length(x=c(3,4,5,6,7,8,9,10))

length(x=5:220)

#Subsetting and Element Extraction

myvec <- c(5,-2.3,4,4,4,6,8,10,40221,-8)

 length(x=myvec)

 myvec[1]

 foo <- myvec[2]

 myvec[length(x=myvec)]


#MATRICES AND ARRAYS

A <- matrix(data=c(-3,2,893,0.17),nrow=2,ncol=2)

matrix(data=c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=FALSE)
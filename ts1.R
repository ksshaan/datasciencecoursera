require(astsa)
help("astsa")
help(jj)
plot(jj,type='o',main="J&J quarterly resluts",xlab="years",ylab="results")

help(flu)
plot(flu,type='o',main="FLU DATA",xlab="years",ylab="Deaths per 10K")

help(globtemp)
plot(globtemp,type='o',main="Global temp DATA",xlab="years",ylab="temp variation")


help(globtempl)
plot(globtempl,type='o',main="Global temp Land DATA",xlab="years",ylab="temp variation")


help(star)
plot(star,type='o',main="magnitude of a star taken at midnight for 600 consecutive days",xlab="years",ylab="Size variation")

#produce 100 random numbers
purely_random_process = ts(rnorm(100))
print(purely_random_process)
#brackets will provide the covariance coefficients as well as the plot...
(acf(purely_random_process,type="covariance"))

(acf(purely_random_process,main="correllogram"))


x=NULL
x[1]=0
for (i in 2:1000) {
   x[i] = x[i-1] + rnorm(1)
}
x


random_walk = ts(x)
plot(random_walk,main='A random walk',ylab='',xlab='days',col='red',lwd=2)
(acf(random_walk))

plot(diff(random_walk))
acf(diff(random_walk))

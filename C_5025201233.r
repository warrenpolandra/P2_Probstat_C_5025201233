####number 1####
x <- as.vector(c(78,75,67,77,70,72,78,74,77))
y <- as.vector(c(100,95,70,90,90,90,89,90,100))

#a
z <- x-y;z
stdev <- sd(z); stdev

#b
zbar <- mean(z); zbar
n <- length(z)

tvalue <- zbar/(stdev/sqrt(n)); tvalue

pval <- 2*pt(tvalue,df=n-1);pval

#c
#H0 = tidak ada pengaruh yang signifikan secara statistika dalam hal kadar 
#saturasi oksigen , sebelum dan sesudah melakukan aktivitas ????
#H1 = ada pengaruh yang signifikan secara statistika dalam hal kadar 
#saturasi oksigen , sebelum dan sesudah melakukan aktivitas ????

alpha <- 0.05

# tolak H0 jika pvalue < alpha
test <- function(alpha){
  if(pval <= alpha){
    cat("Tolak H0")
  }
  else{
    cat("Gagal Tolak H0")
  }
}

test(0.05)

####number 2####
zsum.test(mean.x=23500, sigma.x=3900, n.x=100, alternative = "greater",
            mu=20000, conf.level=0.95)
#a
#iya setuju karena pvalue < alpha maka tolak H0 dimana rata rata mobil < 20000

#b
#nilai z = 8.9744
#pvalue < 2.2e-16 -> sangat kecil dan udah pasti lebih kecil dari alpha 0.05

#c
#pvalue < 2.2e-16 -> tolak h0 karena < alpha 0.05

####number 3####
n1 <- 19
xbar1 <- 3.64
s1 <- 1.67

n2 <- 27
xbar2 <- 2.79
s2 <- 1.32

#a
#H0 : mu1 = mu2
#H1 : mu1 <> mu2

#b

#c
a <- sqrt((((s1)^2)/n1)+(((s2)^2)/n2))
zvalue <- (xbar1-xbar2)/a ; zvalue

#d
alpha <- 0.05
z_half_alpha <- qnorm(1-(alpha/2))
c(-z_half_alpha, z_half_alpha)

#e
#tolak H0 jika zvalue > z_half_alpha or -zvalue < -z_half_alpha

test <- function(alpha){
  if(abs(zvalue) > z_half_alpha){
    cat("Tolak H0")
  }
  else{
    cat("Gagal Tolak H0")
  }
}
test(0.05)

#f
#karena gagal tolak H0 maka mu1 = mu2 dan tidak ada perbedaan pada rata ratanya
#antara Bandung dan Bali

#####number 4####

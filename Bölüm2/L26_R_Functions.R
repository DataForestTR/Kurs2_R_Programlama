#### R Fonksiyonlarına Giris ####

print()
paste()

is.numeric()
is.character()

typeof()


c()
seq()
rep()


sqrt()


runif() # rnorm()

# ?
?runif()
?print()
?paste()

runif(10, 3, 30)
runif(5)
runif(n=3, min = 5, max = 10)
runif(n=3, max = 10, min = 5)
runif(min=6, max = 12, n = 4)


?c()
?seq()
seq(2,8,2)
seq(2,,2, length.out = 10)

a = c("x", "y", "2")
a

seq(4, 30, along.with = a)



rep(a, each = 3)

b <- seq(8,40, along.with = a)
b
c <- sqrt(b)
c

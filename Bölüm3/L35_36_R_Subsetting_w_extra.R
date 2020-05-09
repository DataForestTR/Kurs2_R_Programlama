#### SUBSETTING / Alt Kume ####
###############################

x <- c("a", "b", "c", "d", "e")
x

# Subsetting Vectors
x[c(1,5)]
x[1]

## Matrix Subset ##
a <- runif(120, 0, 100) # Uniform Distribution
a_matrix = matrix(a, 20, 6)
row.names(a_matrix) <- 1:20
colnames(a_matrix) <- 1:6
a_matrix

a_matrix[1:5, 2:5] # a_matrix[satir_numarasi, sutun numarasi]
a_matrix[c(2,9),]
a_matrix[,c("1","3")]

a_matrix[1,] # satir ismi kayboldu
is.matrix(a_matrix[1,]) # Matrix degil
is.vector(a_matrix[1,]) # Vektore donustu

a_matrix[1,3]
is.matrix(a_matrix[1,3])
is.vector(a_matrix[1,3])

a_matrix[1,,drop=F]
is.matrix(a_matrix[1,,drop=F])
a_matrix[1,3,drop=F]
is.matrix(a_matrix[1,3,drop=F])


### SUBETTING EXTRA ###
## List subset

y = list(dizi = 1:5, oran = 0.4, mesaj = "hosgeldin")
y[1]
y[[1]]

y$oran
y[["oran"]]
y["oran"]

y[c(1,3)]

isim <- "dizi"
y[[isim]]
y$isim
y$dizi

## Subset Nested Items / Ic ice Elemanlardan Alt Kume Olusturma

z = list(a=list(6,7,8), b = c("k", "m"))
z

z[[c(1,3)]]
z[[1]][[3]]
z[[c(2,2)]]

## Subset Partial Matching / Kism Eslesme ile Alt Kume Olusturma
t <- list(dataforest = 2:8) # partial matching "=" ile calisir
t$d
t[["d"]]
t[["d", exact = FALSE]] # exact = FALSE 


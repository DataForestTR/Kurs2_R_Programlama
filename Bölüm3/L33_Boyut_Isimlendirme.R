#### NAMING DIMENSIONS / BOYUT ISIMLENDIRME ####

vektor1 = 1:4
vektor1

# Isimlendirme
names(vektor1)
names(vektor1) <- c("x", "y", "z", "t")
names(vektor1)
vektor1

vektor1["z"]

# Isimlendirme
names(vektor1) <- NULL
names(vektor1)

## Matris Boyutu Isimlendirme (Naming Matrix Dimensions)
c("k", "2", "M")
rep(c("k","2","M"), each = 3)

temp_vector <- rep(c("k","2","M"), each = 3) # gecici vektor
temp_vector

A = matrix(temp_vector, 3, 3)
A

# row.names() / satir isimleri
row.names(A)

row.names(A) = c("satir1", "satir2", "satir3")
row.names(A)
A

# col.names() / sutun isimlerini
colnames(A)

colnames(A) <- c("sutun1", "sutun2", "sutun3")
colnames(A)
A

A["satir1", "sutun2"]

colnames(A) <- NULL
colnames(A)
A

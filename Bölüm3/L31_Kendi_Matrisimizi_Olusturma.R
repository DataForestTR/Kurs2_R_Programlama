#### KENDI MATRISIMIZI OLUSTURMA ####

# matrix()

?matrix()

X <- matrix()
X

A <- matrix(,3,4)
A

veri = 1:12

B <- matrix(veri,3,4)
B
B[2,3] # B matrisnde 2.satır 3. sütundaki değer
B[2,]  # B matrisinde 2.satırın tamamı
B[,3]


C <- matrix(veri,3,4, byrow = T)
C
C[2,3]
C[2, ]
C[ ,3]


# rbind() / Satir(row) Baglama(binding)

r1 = c("Bugün", "hava", "guzel")
r2 = c("X", "Y", "Z")
r3 = c(1,2,3)

D = rbind(r1,r2,r3)
D

D2 = rbind(r3,r1,r2)
D2


# cbind() / Sütun(Column) Baglama(binding)

c1 = c("Bugün", "hava", "guzel")
c2 = c("X", "Y", "Z")
c3 = c(1,2,3)

E = cbind(c1,c2,c3)
E






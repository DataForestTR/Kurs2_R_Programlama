#### R ile VERI HAZIRLAMAYA GIRIS ####

## [] ile Vektor Kullanimi

v1 <- c(2, 138, 554, 43, 5)
v2 <- seq(101, 200, 11)
v3 <- rep("Veri Hazirlama", 3)

x = c("a", "b", "c", "d", "e")
x

x[2]
x[-1]
x[-4]

y=x[-4]
y

x[1:4]
x[4:5]

## !! R Programlama Dilinde indisler(pozisyonlar) 1'den başlar (0'dan değil)
x[0]
x[1]


y[c(2,4)]
y

y[c(-1,-3)]


-3:-5
v1[-3:-5]
v1
v1[1:2]

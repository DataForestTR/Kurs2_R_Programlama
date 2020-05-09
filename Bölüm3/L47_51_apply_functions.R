#### LOOP FUNCTIONS / DONGU FONKSIYONLARI ####
######## APPLY FUNCTIONS #####################

# lapply
# sapply
# apply
# mapply
# tapply

### lapply: Listeler uzerinde apply fonksiyonu calistirir
str(lapply)

l = list(x= 2:6, b= runif(10))
lapply(l, mean)

x = 1:5
lapply(x, runif)
runif(1)
runif(2)
###
runif(5)
lapply(x, runif, min = 10, max = 20)



### sapply: Simlified lapply / Basitlestirilmis lapply()
## lapply() fonksiyonun sonucu mumkunse bir basitlestirme yapiyor
# Islem sonucunda her elemaninin uzunlugu 1 olan bir liste(list) donuyorsa => Sonucu vektore(vector) cevirir
# Islem sonucunda her elemaninin uzunlugu 1'den buyuk ve birbirine esit olan bir liste donuyorsa => Sonucu matrise(matrix) cevirir
str(sapply)
sapply(l, mean)



### apply 
# Loop ile ayni sureyi alabilir fakat tek satirda okuma kolayligi saglar
str(apply)
y = matrix(runif(120,50,100), 30, 40)
nrow(y)
ncol(y)

apply(y,2,mean) # margin = 2 , sutun bazinda
apply(y,1,mean) # margin = 1 , satir bazinda 



### mapply: Multivariate apply / Cok degiskenli apply fonksiyonu uygulamamizi saglar
str(mapply)
list(rep(2,6), rep(3,5), rep(4,4))
mapply(rep, 2:4, 6:4)



### tapply: Fonksiyonu Vektorun Alt Kumelerine uygulamamizi saglar
str(tapply)
tapply(eksiksiz_Yas$Age, eksiksiz_Yas$Sex, mean)



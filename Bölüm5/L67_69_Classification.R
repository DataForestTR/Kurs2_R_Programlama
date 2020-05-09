
### Siniflandirma Modellemesi Icin On Isleme

hangi_ay <- data.frame("month"=hava_kalitesi$Month)
names(hangi_ay)= "Month"
# hava_kalitesi tablosundan Day ve Month Degiskenlerini Kaldirmak
hava_kalitesi[,c(5,6)]<- NULL 
head(hava_kalitesi)

set.seed(999) # Tekrar calistirilabilir rastgelelik icin onemli!
rnum<- sample(rep(1:153))
# Bagimsiz degiskenlerin sirasini rastgeleleştirme (Predictor randomization)
hava_kalitesi <- hava_kalitesi[rnum,]
# Hedef degiskenin sirasini rastgeleleştirme (Target randomization)
hangi_ay <- as.data.frame(hangi_ay[rnum,]) 

hava_kalitesi_train <- hava_kalitesi[1:130,]
hava_kalitesi_train_target<- hangi_ay[1:130,]
hava_kalitesi_test<- hava_kalitesi[131:nrow(hava_kalitesi),]
hava_kalitesi_test_target<- hangi_ay[131:nrow(hangi_ay),]


### Gozlemlerin Hangi Aya ait oldugunu Tahminleme (Predictive Modelling) 
## k-NN Algoritmasi (k-En Yakin Komsu)
# k-NN algoritmasi icin komsu sayisi genelde satir sayisinin karekoku kadar belirlenir
neigh<- round(sqrt(nrow(hava_kalitesi)))+1
model5<- knn(train = hava_kalitesi_train, 
            test = hava_kalitesi_test, 
            cl=hava_kalitesi_train_target, k=neigh) # apply knn algo

table(airquality.test.target, model5)

mean(hava_kalitesi_test_target== model5)

